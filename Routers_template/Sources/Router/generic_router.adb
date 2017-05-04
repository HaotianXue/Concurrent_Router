--
-- Framework: Uwe R. Zimmer, Australia, 2015
-- Answer the questions about buffers, algorithm to U5923899, U5833429
-- Author : U5689296

with Exceptions; use Exceptions;
with Fifo;
with Generic_Fifo;

package body Generic_Router is

   task body Router_Task is

      -- the condition of main loop
      running : Boolean := True;

      Connected_Routers : Ids_To_Links;

      -- Two unbounded local FIFO Queues to store the messages
      package Router_Fifo is new Generic_Fifo (Inner_Message);
      use Router_Fifo;
      package Message_Fifo is new Fifo (Message_Post);
      use Message_Fifo;

      protected Router_Queue is
         procedure Enqueue (Item : Inner_Message);
         entry Dequeue (Item : out Inner_Message);
         function Is_Empty return Boolean;
      private
         Inner_Fifo : Router_Fifo.Fifo_Type;
      end Router_Queue;

      protected body Router_Queue is

         procedure Enqueue (Item : Inner_Message) is
         begin
            Router_Fifo.Push (Inner_Fifo, Item);
         end Enqueue;

         entry Dequeue (Item : out Inner_Message) when not Router_Fifo.Is_Empty_Or_Not (Inner_Fifo) is
         begin
            Router_Fifo.Pop (Inner_Fifo, Item);
         end Dequeue;

         function Is_Empty return Boolean is
         begin
            return Router_Fifo.Is_Empty_Or_Not (Inner_Fifo);
         end Is_Empty;

      end Router_Queue;

      protected Message_Queue is
         procedure Enqueue (Item : Message_Post);
         entry Dequeue (Item : out Message_Post);
         function Is_Empty return Boolean;
      private
         This_Fifo : Message_Fifo.Fifo_Type;
      end Message_Queue;

      protected body Message_Queue is
         procedure Enqueue (Item : Message_Post) is
         begin
            Message_Fifo.Push (This_Fifo, Item);
         end Enqueue;

         entry Dequeue (Item : out Message_Post) when not Message_Fifo.Is_Empty (This_Fifo) is
         begin
            Message_Fifo.Pop (This_Fifo, Item);
         end Dequeue;

         function Is_Empty return Boolean is
         begin
            return Message_Fifo.Is_Empty (This_Fifo);
         end Is_Empty;

      end Message_Queue;

      -- the shortest path table
      Hop_Table : array (Router_Range) of Table_Message;

      protected Table is
         procedure Add (Destination : Router_Range; Next_Hop : Router_Range; Hop_Count : Natural);
      end Table;

      protected body Table is
         procedure Add (Destination : Router_Range; Next_Hop : Router_Range; Hop_Count : Natural) is
         begin
            Hop_Table (Destination) := (Destination, Next_Hop, Hop_Count);
         end Add;
      end Table;

   begin
      accept Configure (Links : Ids_To_Links) do
         Connected_Routers := Links;
         Table.Add (Task_Id, Task_Id, 0);
      end Configure;

      declare

         Final_Message : Messages_Mailbox;

         Port_List : constant Connected_Router_Ports := To_Router_Ports (Task_Id, Connected_Routers);

         task Inner_Sender;
         task body Inner_Sender is
            Origin_Message : Inner_Message;
         begin
            Origin_Message := (Sender => Task_Id,
                               Source => Task_Id,
                               Hop_Count => 0);
            for connection of Port_List loop
               connection.Link.all.Inner_Send (Origin_Message);
            end loop;
         end Inner_Sender;

         task Inner_Receiver;
         task body Inner_Receiver is
            Incoming_Message : Inner_Message;
            Update_Message   : Inner_Message;
         begin
            loop

               Inner_Receive (Incoming_Message);
               Incoming_Message.Hop_Count := Incoming_Message.Hop_Count + 1;
               if Incoming_Message.Hop_Count < Hop_Table (Incoming_Message.Source).Hop_Count then
                  Table.Add (Incoming_Message.Source, Incoming_Message.Sender, Incoming_Message.Hop_Count);
                  Update_Message := (Sender    => Task_Id,
                                     Source    => Incoming_Message.Source,
                                     Hop_Count => Incoming_Message.Hop_Count);
                  for connection of Port_List loop
                     connection.Link.all.Inner_Send (Update_Message);
                  end loop;
               end if;

            end loop;
         end Inner_Receiver;

         task Outer_Receiver;
         task body Outer_Receiver is
            This_Message : Message_Post;
            Client_Message : Messages_Client;
         begin
            loop
               Message_Queue.Dequeue (This_Message);
               if This_Message.Destination = Task_Id then
                  Client_Message := (Destination => This_Message.Destination,
                                     The_Message => This_Message.The_Message);
                  Send_Message (Client_Message);
               else
                  declare
                     Next_Message : Message_Post;
                  begin
                     for connection of Port_List loop
                        if connection.Id = Hop_Table (This_Message.Destination).Next_Hop then
                           Next_Message := (Sender      => This_Message.Sender,
                                            Destination => This_Message.Destination,
                                            The_Message => This_Message.The_Message,
                                            Hop_Count   => This_Message.Hop_Count + 1);
                           connection.Link.all.Outer_Send (Next_Message);
                           exit;
                        end if;
                     end loop;
                  end;
               end if;
            end loop;
         end Outer_Receiver;

      begin
         while running loop
            select

               accept Send_Message (Message : in Messages_Client) do
                  if Message.Destination = Task_Id then
                     Final_Message := (Sender => Task_Id, The_Message => Message.The_Message, Hop_Counter => 0);
                     accept Receive_Message (Message : out Messages_Mailbox) do
                        Message := Final_Message;
                     end Receive_Message;
                  else
                     declare
                        Next_Message : Message_Post;
                     begin
                        Next_Message := (Sender => Task_Id, Destination => Message.Destination, The_Message => Message.The_Message, Hop_Count => 0);
                        Message_Queue.Enqueue (Next_Message);
                     end;
                  end if;
               end Send_Message;
            or
               accept Inner_Send (Message : in Inner_Message) do
                  Router_Queue.Enqueue (Message);
               end Inner_Send;
            or
               when not Router_Queue.Is_Empty =>
                  accept Inner_Receive (Message : out Inner_Message) do
                     Router_Queue.Dequeue (Message);
                  end Inner_Receive;
            or
               accept Outer_Send (Message : in Message_Post) do
                  if Message.Destination = Task_Id then
                        Final_Message := (Sender      => Message.Sender,
                                          The_Message => Message.The_Message,
                                          Hop_Counter => Message.Hop_Count);
                        accept Receive_Message (Message : out Messages_Mailbox) do
                           Message := Final_Message;
                        end Receive_Message;
                  else
                     Message_Queue.Enqueue (Message);
                  end if;

               end Outer_Send;
            or
               accept Shutdown  do
                  running := False;
                  abort Inner_Receiver;
                  abort Outer_Receiver;
                  abort Inner_Sender;
               end Shutdown;

            end select;
         end loop;
      end;

   exception
      when Exception_Id : others => Show_Exception (Exception_Id);
   end Router_Task;

end Generic_Router;
