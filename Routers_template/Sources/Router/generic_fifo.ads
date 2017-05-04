-- Reference : This code is basiclly from : https://rosettacode.org/wiki/Queue/Definition#Ada
-- The function Is_Empty_Or_Not is added by myself
with Ada.Containers.Doubly_Linked_Lists;
generic

   type Element_Type is private;

package Generic_Fifo is

   type Fifo_Type is tagged private;

   procedure Push(The_Fifo : in out Fifo_Type; Item : in Element_Type);
   procedure Pop(The_Fifo : in out Fifo_Type; Item : out Element_Type);
   function Is_Empty_Or_Not (List : Fifo_Type) return Boolean;

   Empty_Error : Exception;

private

   package List_Pkg is new Ada.Containers.Doubly_Linked_Lists(Element_Type);
   use List_Pkg;
   Type Fifo_Type is new List with null record;

 end Generic_Fifo;
