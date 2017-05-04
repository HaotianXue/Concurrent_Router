--
--  Framework: Uwe R. Zimmer, Australia, 2015
--

with Ada.Strings.Bounded;           use Ada.Strings.Bounded;
with Generic_Routers_Configuration;

generic
   with package Routers_Configuration is new Generic_Routers_Configuration (<>);

package Generic_Message_Structures is

   use Routers_Configuration;

   package Message_Strings is new Generic_Bounded_Length (Max => 80);
   use Message_Strings;

   subtype The_Core_Message is Bounded_String;

   type Messages_Client is record
      Destination : Router_Range;
      The_Message : The_Core_Message;
   end record;

   type Messages_Mailbox is record
      Sender      : Router_Range     := Router_Range'Invalid_Value;
      The_Message : The_Core_Message := Message_Strings.To_Bounded_String ("");
      Hop_Counter : Natural          := 0;
   end record;

   -- Innter_Router message which helps routers to find the shortest paths
   type Inner_Message is record
      Sender    : Router_Range := Router_Range'Invalid_Value; -- Who i came from
      Source    : Router_Range := Router_Range'Invalid_Value; -- Who i am
      Hop_Count : Natural      := 0;
   end record;

   -- Message which indicates the shortest path
   type Table_Message is record
      Destination : Router_Range := Router_Range'Invalid_Value;
      Next_Hop    : Router_Range := Router_Range'Invalid_Value;
      Hop_Count   : Natural      := 9999;
   end record;

   -- Message to send after the client sends the message to router
   type Message_Post is record
      Sender      : Router_Range;
      Destination : Router_Range;
      The_Message : The_Core_Message;
      Hop_Count   : Natural;
   end record;

end Generic_Message_Structures;
