pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__test_routers.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__test_routers.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E092 : Short_Integer; pragma Import (Ada, E092, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__containers_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__io_exceptions_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "ada__numerics_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "ada__strings_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "ada__strings__maps_E");
   E243 : Short_Integer; pragma Import (Ada, E243, "ada__strings__maps__constants_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "ada__tags_E");
   E063 : Short_Integer; pragma Import (Ada, E063, "ada__streams_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "interfaces__c_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E095 : Short_Integer; pragma Import (Ada, E095, "system__file_control_block_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "system__file_io_E");
   E079 : Short_Integer; pragma Import (Ada, E079, "system__finalization_root_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__finalization_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "system__storage_pools_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "system__finalization_masters_E");
   E219 : Short_Integer; pragma Import (Ada, E219, "system__storage_pools__subpools_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "gnat__directory_operations_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "system__assertions_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "system__pool_global_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "system__random_seed_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "ada__strings__unbounded_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "system__regexp_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "gnat__command_line_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "system__tasking__initialization_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "ada__real_time_E");
   E085 : Short_Integer; pragma Import (Ada, E085, "ada__text_io_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "system__tasking__protected_objects_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "system__tasking__protected_objects__entries_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "system__tasking__queuing_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "system__tasking__stages_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "exceptions_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "fifo_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "generic_fifo_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "generic_router_links_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "id_dispenser_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "topologies_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "routers_configuration_structures_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "generic_router_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "generic_routers_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "topologies__finalize_body");
      begin
         E215 := E215 - 1;
         F1;
      end;
      E201 := E201 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E085 := E085 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E259 := E259 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__regexp__finalize_spec");
      begin
         F4;
      end;
      E245 := E245 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__strings__unbounded__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E090 := E090 - 1;
         F6;
      end;
      E221 := E221 - 1;
      E219 := E219 - 1;
      E252 := E252 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__storage_pools__subpools__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__finalization_masters__finalize_spec");
      begin
         F9;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, True, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           True, True, False, True, True, False, True, True, 
           False, True, True, True, True, False, True, False, 
           False, False, True, False, True, True, False, True, 
           False, True, True, False, True, False, True, True, 
           False, True, True, False, True, False, False, False, 
           True, False, True, False, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, True, 
           True, False, False, False, True, True, True, True, 
           False, True, False),
         Count => (0, 0, 0, 1, 5, 7, 1, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      System.Scalar_Values.Initialize ('I', 'N');

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E058 := E058 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E064 := E064 + 1;
      Ada.Numerics'Elab_Spec;
      E135 := E135 + 1;
      Ada.Strings'Elab_Spec;
      E165 := E165 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E243 := E243 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E063 := E063 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.File_Control_Block'Elab_Spec;
      E095 := E095 + 1;
      System.Finalization_Root'Elab_Spec;
      E079 := E079 + 1;
      Ada.Finalization'Elab_Spec;
      E061 := E061 + 1;
      System.Storage_Pools'Elab_Spec;
      E225 := E225 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Gnat.Directory_Operations'Elab_Spec;
      System.Assertions'Elab_Spec;
      E262 := E262 + 1;
      System.Pool_Global'Elab_Spec;
      E252 := E252 + 1;
      System.Random_Seed'Elab_Body;
      E268 := E268 + 1;
      E219 := E219 + 1;
      System.Finalization_Masters'Elab_Body;
      E221 := E221 + 1;
      System.File_Io'Elab_Body;
      E090 := E090 + 1;
      E053 := E053 + 1;
      Ada.Tags'Elab_Body;
      E066 := E066 + 1;
      E169 := E169 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      System.Os_Lib'Elab_Body;
      E092 := E092 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      Gnat.Directory_Operations'Elab_Body;
      E247 := E247 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E245 := E245 + 1;
      System.Regexp'Elab_Spec;
      E259 := E259 + 1;
      Gnat.Command_Line'Elab_Spec;
      System.Tasking.Initialization'Elab_Body;
      E189 := E189 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E137 := E137 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E085 := E085 + 1;
      Gnat.Command_Line'Elab_Body;
      E240 := E240 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E199 := E199 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E201 := E201 + 1;
      System.Tasking.Queuing'Elab_Body;
      E197 := E197 + 1;
      System.Tasking.Stages'Elab_Body;
      E278 := E278 + 1;
      E183 := E183 + 1;
      E207 := E207 + 1;
      E209 := E209 + 1;
      E233 := E233 + 1;
      E235 := E235 + 1;
      Topologies'Elab_Spec;
      Topologies'Elab_Body;
      E215 := E215 + 1;
      E213 := E213 + 1;
      E231 := E231 + 1;
      E237 := E237 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_test_routers");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/exceptions.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/fifo.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_fifo.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_router_links.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/id_dispenser.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/topologies.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/routers_configuration_structures.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_routers_configuration.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_message_structures.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_router.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/generic_routers.o
   --   /Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/test_routers.o
   --   -L/Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/
   --   -L/Users/xuehaotian/Desktop/courses/comp2310/Ass2-Finalised_Version/Routers_template/Objects/
   --   -L/usr/local/gnat/lib/gcc/x86_64-apple-darwin14.5.0/4.9.4/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
