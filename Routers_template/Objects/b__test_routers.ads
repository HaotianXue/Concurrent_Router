pragma Ada_95;
pragma Warnings (Off);
with System;
with System.Scalar_Values;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2016 (20160515-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test_routers" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#b3fe6d5d#;
   pragma Export (C, u00001, "test_routersB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#337e9ce1#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#87cd2ab9#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#b27fb9e9#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#c5dcd3d2#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#12a38fcc#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#472fa979#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#a2017425#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#c3282aa7#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#5dacf2f2#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#bd0227d8#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#6849e5ce#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#eeeb60a3#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#4d97414f#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#9e8643e5#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#ab4b4751#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00028, "system__exceptions__machineS");
   u00029 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00029, "system__exceptions_debugB");
   u00030 : constant Version_32 := 16#bda2d363#;
   pragma Export (C, u00030, "system__exceptions_debugS");
   u00031 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00031, "system__img_intB");
   u00032 : constant Version_32 := 16#c1f3ca65#;
   pragma Export (C, u00032, "system__img_intS");
   u00033 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00033, "system__tracebackB");
   u00034 : constant Version_32 := 16#9d0af463#;
   pragma Export (C, u00034, "system__tracebackS");
   u00035 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00035, "system__traceback_entriesB");
   u00036 : constant Version_32 := 16#c373dcd7#;
   pragma Export (C, u00036, "system__traceback_entriesS");
   u00037 : constant Version_32 := 16#6fd210f2#;
   pragma Export (C, u00037, "system__traceback__symbolicB");
   u00038 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00038, "system__traceback__symbolicS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00041, "system__address_imageB");
   u00042 : constant Version_32 := 16#62c4b79d#;
   pragma Export (C, u00042, "system__address_imageS");
   u00043 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00043, "system__wch_conB");
   u00044 : constant Version_32 := 16#d8550875#;
   pragma Export (C, u00044, "system__wch_conS");
   u00045 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00045, "system__wch_stwB");
   u00046 : constant Version_32 := 16#f5442474#;
   pragma Export (C, u00046, "system__wch_stwS");
   u00047 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00047, "system__wch_cnvB");
   u00048 : constant Version_32 := 16#d7e2b286#;
   pragma Export (C, u00048, "system__wch_cnvS");
   u00049 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00049, "interfacesS");
   u00050 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00050, "system__wch_jisB");
   u00051 : constant Version_32 := 16#5792aba7#;
   pragma Export (C, u00051, "system__wch_jisS");
   u00052 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00052, "interfaces__cB");
   u00053 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00053, "interfaces__cS");
   u00054 : constant Version_32 := 16#a6535153#;
   pragma Export (C, u00054, "system__os_primitivesB");
   u00055 : constant Version_32 := 16#49a73bd1#;
   pragma Export (C, u00055, "system__os_primitivesS");
   u00056 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00056, "system__tracesB");
   u00057 : constant Version_32 := 16#3135420d#;
   pragma Export (C, u00057, "system__tracesS");
   u00058 : constant Version_32 := 16#5e196e91#;
   pragma Export (C, u00058, "ada__containersS");
   u00059 : constant Version_32 := 16#bcec81df#;
   pragma Export (C, u00059, "ada__containers__helpersB");
   u00060 : constant Version_32 := 16#4adfc5eb#;
   pragma Export (C, u00060, "ada__containers__helpersS");
   u00061 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00061, "ada__finalizationS");
   u00062 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00062, "ada__streamsB");
   u00063 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00063, "ada__streamsS");
   u00064 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00064, "ada__io_exceptionsS");
   u00065 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00065, "ada__tagsB");
   u00066 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00066, "ada__tagsS");
   u00067 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00067, "system__htableB");
   u00068 : constant Version_32 := 16#47ea994d#;
   pragma Export (C, u00068, "system__htableS");
   u00069 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00069, "system__string_hashB");
   u00070 : constant Version_32 := 16#e5b4f233#;
   pragma Export (C, u00070, "system__string_hashS");
   u00071 : constant Version_32 := 16#f7ae5624#;
   pragma Export (C, u00071, "system__unsigned_typesS");
   u00072 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00072, "system__val_lluB");
   u00073 : constant Version_32 := 16#8d5c0156#;
   pragma Export (C, u00073, "system__val_lluS");
   u00074 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00074, "system__val_utilB");
   u00075 : constant Version_32 := 16#6f889c59#;
   pragma Export (C, u00075, "system__val_utilS");
   u00076 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00076, "system__case_utilB");
   u00077 : constant Version_32 := 16#e7214370#;
   pragma Export (C, u00077, "system__case_utilS");
   u00078 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00078, "system__finalization_rootB");
   u00079 : constant Version_32 := 16#8cda5937#;
   pragma Export (C, u00079, "system__finalization_rootS");
   u00080 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00080, "system__atomic_countersB");
   u00081 : constant Version_32 := 16#7774072a#;
   pragma Export (C, u00081, "system__atomic_countersS");
   u00082 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00082, "ada__float_text_ioB");
   u00083 : constant Version_32 := 16#e61b3c6c#;
   pragma Export (C, u00083, "ada__float_text_ioS");
   u00084 : constant Version_32 := 16#d5bfa9f3#;
   pragma Export (C, u00084, "ada__text_ioB");
   u00085 : constant Version_32 := 16#2d7da68a#;
   pragma Export (C, u00085, "ada__text_ioS");
   u00086 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00086, "interfaces__c_streamsB");
   u00087 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00087, "interfaces__c_streamsS");
   u00088 : constant Version_32 := 16#b3b9fca9#;
   pragma Export (C, u00088, "system__crtlS");
   u00089 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00089, "system__file_ioB");
   u00090 : constant Version_32 := 16#6459cbc2#;
   pragma Export (C, u00090, "system__file_ioS");
   u00091 : constant Version_32 := 16#7358ec0a#;
   pragma Export (C, u00091, "system__os_libB");
   u00092 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00092, "system__os_libS");
   u00093 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00093, "system__stringsB");
   u00094 : constant Version_32 := 16#bd973bc1#;
   pragma Export (C, u00094, "system__stringsS");
   u00095 : constant Version_32 := 16#3eb7b00f#;
   pragma Export (C, u00095, "system__file_control_blockS");
   u00096 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00096, "ada__text_io__float_auxB");
   u00097 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00097, "ada__text_io__float_auxS");
   u00098 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00098, "ada__text_io__generic_auxB");
   u00099 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00099, "ada__text_io__generic_auxS");
   u00100 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00100, "system__img_realB");
   u00101 : constant Version_32 := 16#04807b45#;
   pragma Export (C, u00101, "system__img_realS");
   u00102 : constant Version_32 := 16#c7bf9154#;
   pragma Export (C, u00102, "system__fat_llfS");
   u00103 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00103, "system__float_controlB");
   u00104 : constant Version_32 := 16#23d4699b#;
   pragma Export (C, u00104, "system__float_controlS");
   u00105 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00105, "system__img_lluB");
   u00106 : constant Version_32 := 16#be6756e7#;
   pragma Export (C, u00106, "system__img_lluS");
   u00107 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00107, "system__img_unsB");
   u00108 : constant Version_32 := 16#685a6ad3#;
   pragma Export (C, u00108, "system__img_unsS");
   u00109 : constant Version_32 := 16#93584cd0#;
   pragma Export (C, u00109, "system__powten_tableS");
   u00110 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00110, "system__val_realB");
   u00111 : constant Version_32 := 16#3d015db6#;
   pragma Export (C, u00111, "system__val_realS");
   u00112 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00112, "system__exn_llfB");
   u00113 : constant Version_32 := 16#7f56917b#;
   pragma Export (C, u00113, "system__exn_llfS");
   u00114 : constant Version_32 := 16#9b5d36b3#;
   pragma Export (C, u00114, "system__fat_fltS");
   u00115 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00115, "ada__integer_text_ioB");
   u00116 : constant Version_32 := 16#f1daf268#;
   pragma Export (C, u00116, "ada__integer_text_ioS");
   u00117 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00117, "ada__text_io__integer_auxB");
   u00118 : constant Version_32 := 16#b9793d30#;
   pragma Export (C, u00118, "ada__text_io__integer_auxS");
   u00119 : constant Version_32 := 16#b10ba0c7#;
   pragma Export (C, u00119, "system__img_biuB");
   u00120 : constant Version_32 := 16#318cde69#;
   pragma Export (C, u00120, "system__img_biuS");
   u00121 : constant Version_32 := 16#4e06ab0c#;
   pragma Export (C, u00121, "system__img_llbB");
   u00122 : constant Version_32 := 16#704bce97#;
   pragma Export (C, u00122, "system__img_llbS");
   u00123 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00123, "system__img_lliB");
   u00124 : constant Version_32 := 16#d2677f76#;
   pragma Export (C, u00124, "system__img_lliS");
   u00125 : constant Version_32 := 16#a756d097#;
   pragma Export (C, u00125, "system__img_llwB");
   u00126 : constant Version_32 := 16#d927ed01#;
   pragma Export (C, u00126, "system__img_llwS");
   u00127 : constant Version_32 := 16#eb55dfbb#;
   pragma Export (C, u00127, "system__img_wiuB");
   u00128 : constant Version_32 := 16#5fcd59fb#;
   pragma Export (C, u00128, "system__img_wiuS");
   u00129 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00129, "system__val_intB");
   u00130 : constant Version_32 := 16#8b8d0098#;
   pragma Export (C, u00130, "system__val_intS");
   u00131 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00131, "system__val_unsB");
   u00132 : constant Version_32 := 16#e706bb1f#;
   pragma Export (C, u00132, "system__val_unsS");
   u00133 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00133, "system__val_lliB");
   u00134 : constant Version_32 := 16#590ccc07#;
   pragma Export (C, u00134, "system__val_lliS");
   u00135 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00135, "ada__numericsS");
   u00136 : constant Version_32 := 16#9fad3aa0#;
   pragma Export (C, u00136, "ada__real_timeB");
   u00137 : constant Version_32 := 16#8a504209#;
   pragma Export (C, u00137, "ada__real_timeS");
   u00138 : constant Version_32 := 16#a540e70d#;
   pragma Export (C, u00138, "system__taskingB");
   u00139 : constant Version_32 := 16#2410879e#;
   pragma Export (C, u00139, "system__taskingS");
   u00140 : constant Version_32 := 16#ae36db3a#;
   pragma Export (C, u00140, "system__task_primitivesS");
   u00141 : constant Version_32 := 16#eba442ab#;
   pragma Export (C, u00141, "system__os_interfaceB");
   u00142 : constant Version_32 := 16#225a1d94#;
   pragma Export (C, u00142, "system__os_interfaceS");
   u00143 : constant Version_32 := 16#24379d76#;
   pragma Export (C, u00143, "interfaces__c__extensionsS");
   u00144 : constant Version_32 := 16#acefa820#;
   pragma Export (C, u00144, "system__os_constantsS");
   u00145 : constant Version_32 := 16#738dd9f2#;
   pragma Export (C, u00145, "system__task_primitives__operationsB");
   u00146 : constant Version_32 := 16#0980a7f3#;
   pragma Export (C, u00146, "system__task_primitives__operationsS");
   u00147 : constant Version_32 := 16#89b55e64#;
   pragma Export (C, u00147, "system__interrupt_managementB");
   u00148 : constant Version_32 := 16#5e06908e#;
   pragma Export (C, u00148, "system__interrupt_managementS");
   u00149 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00149, "system__multiprocessorsB");
   u00150 : constant Version_32 := 16#fb84b5d4#;
   pragma Export (C, u00150, "system__multiprocessorsS");
   u00151 : constant Version_32 := 16#e0fce7f8#;
   pragma Export (C, u00151, "system__task_infoB");
   u00152 : constant Version_32 := 16#433297a6#;
   pragma Export (C, u00152, "system__task_infoS");
   u00153 : constant Version_32 := 16#85267e7e#;
   pragma Export (C, u00153, "system__tasking__debugB");
   u00154 : constant Version_32 := 16#511cd042#;
   pragma Export (C, u00154, "system__tasking__debugS");
   u00155 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00155, "system__concat_2B");
   u00156 : constant Version_32 := 16#c188fd77#;
   pragma Export (C, u00156, "system__concat_2S");
   u00157 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00157, "system__concat_3B");
   u00158 : constant Version_32 := 16#c8587602#;
   pragma Export (C, u00158, "system__concat_3S");
   u00159 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00159, "system__img_enum_newB");
   u00160 : constant Version_32 := 16#a2642c67#;
   pragma Export (C, u00160, "system__img_enum_newS");
   u00161 : constant Version_32 := 16#118e865d#;
   pragma Export (C, u00161, "system__stack_usageB");
   u00162 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00162, "system__stack_usageS");
   u00163 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00163, "system__ioB");
   u00164 : constant Version_32 := 16#5d6adde8#;
   pragma Export (C, u00164, "system__ioS");
   u00165 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00165, "ada__stringsS");
   u00166 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00166, "ada__strings__boundedB");
   u00167 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00167, "ada__strings__boundedS");
   u00168 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00168, "ada__strings__mapsB");
   u00169 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00169, "ada__strings__mapsS");
   u00170 : constant Version_32 := 16#a4e2d63b#;
   pragma Export (C, u00170, "system__bit_opsB");
   u00171 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00171, "system__bit_opsS");
   u00172 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00172, "ada__charactersS");
   u00173 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00173, "ada__characters__latin_1S");
   u00174 : constant Version_32 := 16#7ec26662#;
   pragma Export (C, u00174, "ada__strings__superboundedB");
   u00175 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00175, "ada__strings__superboundedS");
   u00176 : constant Version_32 := 16#e5c7cf31#;
   pragma Export (C, u00176, "ada__strings__searchB");
   u00177 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00177, "ada__strings__searchS");
   u00178 : constant Version_32 := 16#5b9edcc4#;
   pragma Export (C, u00178, "system__compare_array_unsigned_8B");
   u00179 : constant Version_32 := 16#6a2b5b2a#;
   pragma Export (C, u00179, "system__compare_array_unsigned_8S");
   u00180 : constant Version_32 := 16#5f72f755#;
   pragma Export (C, u00180, "system__address_operationsB");
   u00181 : constant Version_32 := 16#d0249494#;
   pragma Export (C, u00181, "system__address_operationsS");
   u00182 : constant Version_32 := 16#39741a5d#;
   pragma Export (C, u00182, "exceptionsB");
   u00183 : constant Version_32 := 16#bae1bad2#;
   pragma Export (C, u00183, "exceptionsS");
   u00184 : constant Version_32 := 16#6150ea68#;
   pragma Export (C, u00184, "ada__task_identificationB");
   u00185 : constant Version_32 := 16#3df36169#;
   pragma Export (C, u00185, "ada__task_identificationS");
   u00186 : constant Version_32 := 16#67e431ef#;
   pragma Export (C, u00186, "system__tasking__utilitiesB");
   u00187 : constant Version_32 := 16#51068caf#;
   pragma Export (C, u00187, "system__tasking__utilitiesS");
   u00188 : constant Version_32 := 16#71e7b7a1#;
   pragma Export (C, u00188, "system__tasking__initializationB");
   u00189 : constant Version_32 := 16#ed62fcff#;
   pragma Export (C, u00189, "system__tasking__initializationS");
   u00190 : constant Version_32 := 16#eeadc70a#;
   pragma Export (C, u00190, "system__soft_links__taskingB");
   u00191 : constant Version_32 := 16#5ae92880#;
   pragma Export (C, u00191, "system__soft_links__taskingS");
   u00192 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00192, "ada__exceptions__is_null_occurrenceB");
   u00193 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00193, "ada__exceptions__is_null_occurrenceS");
   u00194 : constant Version_32 := 16#7995e1aa#;
   pragma Export (C, u00194, "system__tasking__task_attributesB");
   u00195 : constant Version_32 := 16#a1da3c09#;
   pragma Export (C, u00195, "system__tasking__task_attributesS");
   u00196 : constant Version_32 := 16#35ce8314#;
   pragma Export (C, u00196, "system__tasking__queuingB");
   u00197 : constant Version_32 := 16#05e644a6#;
   pragma Export (C, u00197, "system__tasking__queuingS");
   u00198 : constant Version_32 := 16#f83990e5#;
   pragma Export (C, u00198, "system__tasking__protected_objectsB");
   u00199 : constant Version_32 := 16#5744f344#;
   pragma Export (C, u00199, "system__tasking__protected_objectsS");
   u00200 : constant Version_32 := 16#9fa349e0#;
   pragma Export (C, u00200, "system__tasking__protected_objects__entriesB");
   u00201 : constant Version_32 := 16#a0c7bfc6#;
   pragma Export (C, u00201, "system__tasking__protected_objects__entriesS");
   u00202 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00202, "system__restrictionsB");
   u00203 : constant Version_32 := 16#6a886006#;
   pragma Export (C, u00203, "system__restrictionsS");
   u00204 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00204, "system__traces__taskingB");
   u00205 : constant Version_32 := 16#0b40d4b2#;
   pragma Export (C, u00205, "system__traces__taskingS");
   u00206 : constant Version_32 := 16#89312812#;
   pragma Export (C, u00206, "fifoB");
   u00207 : constant Version_32 := 16#21637bc9#;
   pragma Export (C, u00207, "fifoS");
   u00208 : constant Version_32 := 16#0d8d6e88#;
   pragma Export (C, u00208, "generic_fifoB");
   u00209 : constant Version_32 := 16#89651e38#;
   pragma Export (C, u00209, "generic_fifoS");
   u00210 : constant Version_32 := 16#9338c94c#;
   pragma Export (C, u00210, "generic_message_structuresS");
   u00211 : constant Version_32 := 16#2c6470be#;
   pragma Export (C, u00211, "generic_routers_configurationS");
   u00212 : constant Version_32 := 16#d5b4f1ad#;
   pragma Export (C, u00212, "routers_configuration_structuresB");
   u00213 : constant Version_32 := 16#73ddea8c#;
   pragma Export (C, u00213, "routers_configuration_structuresS");
   u00214 : constant Version_32 := 16#80fb7ec4#;
   pragma Export (C, u00214, "topologiesB");
   u00215 : constant Version_32 := 16#35583929#;
   pragma Export (C, u00215, "topologiesS");
   u00216 : constant Version_32 := 16#dde34de3#;
   pragma Export (C, u00216, "system__exp_intB");
   u00217 : constant Version_32 := 16#da0b1c5b#;
   pragma Export (C, u00217, "system__exp_intS");
   u00218 : constant Version_32 := 16#6a86c9a5#;
   pragma Export (C, u00218, "system__storage_pools__subpoolsB");
   u00219 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00219, "system__storage_pools__subpoolsS");
   u00220 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00220, "system__finalization_mastersB");
   u00221 : constant Version_32 := 16#98d4136d#;
   pragma Export (C, u00221, "system__finalization_mastersS");
   u00222 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00222, "system__img_boolB");
   u00223 : constant Version_32 := 16#36f15b4c#;
   pragma Export (C, u00223, "system__img_boolS");
   u00224 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00224, "system__storage_poolsB");
   u00225 : constant Version_32 := 16#e0c5b40a#;
   pragma Export (C, u00225, "system__storage_poolsS");
   u00226 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00226, "system__storage_pools__subpools__finalizationB");
   u00227 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00227, "system__storage_pools__subpools__finalizationS");
   u00228 : constant Version_32 := 16#f4e1c091#;
   pragma Export (C, u00228, "system__stream_attributesB");
   u00229 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00229, "system__stream_attributesS");
   u00230 : constant Version_32 := 16#4f020ad0#;
   pragma Export (C, u00230, "generic_routerB");
   u00231 : constant Version_32 := 16#7fe64a8b#;
   pragma Export (C, u00231, "generic_routerS");
   u00232 : constant Version_32 := 16#0abb5837#;
   pragma Export (C, u00232, "generic_router_linksB");
   u00233 : constant Version_32 := 16#267d71e6#;
   pragma Export (C, u00233, "generic_router_linksS");
   u00234 : constant Version_32 := 16#7095fec5#;
   pragma Export (C, u00234, "id_dispenserB");
   u00235 : constant Version_32 := 16#a411273f#;
   pragma Export (C, u00235, "id_dispenserS");
   u00236 : constant Version_32 := 16#9e0f35f2#;
   pragma Export (C, u00236, "generic_routersB");
   u00237 : constant Version_32 := 16#65023e87#;
   pragma Export (C, u00237, "generic_routersS");
   u00238 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00238, "gnatS");
   u00239 : constant Version_32 := 16#539386eb#;
   pragma Export (C, u00239, "gnat__command_lineB");
   u00240 : constant Version_32 := 16#687dd21e#;
   pragma Export (C, u00240, "gnat__command_lineS");
   u00241 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00241, "ada__characters__handlingB");
   u00242 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00242, "ada__characters__handlingS");
   u00243 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00243, "ada__strings__maps__constantsS");
   u00244 : constant Version_32 := 16#5130abd7#;
   pragma Export (C, u00244, "ada__strings__unboundedB");
   u00245 : constant Version_32 := 16#4c956ffe#;
   pragma Export (C, u00245, "ada__strings__unboundedS");
   u00246 : constant Version_32 := 16#6ce04563#;
   pragma Export (C, u00246, "gnat__directory_operationsB");
   u00247 : constant Version_32 := 16#42b5cd24#;
   pragma Export (C, u00247, "gnat__directory_operationsS");
   u00248 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00248, "ada__strings__fixedB");
   u00249 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00249, "ada__strings__fixedS");
   u00250 : constant Version_32 := 16#c024395a#;
   pragma Export (C, u00250, "gnat__os_libS");
   u00251 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00251, "system__pool_globalB");
   u00252 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00252, "system__pool_globalS");
   u00253 : constant Version_32 := 16#a6359005#;
   pragma Export (C, u00253, "system__memoryB");
   u00254 : constant Version_32 := 16#9a554c93#;
   pragma Export (C, u00254, "system__memoryS");
   u00255 : constant Version_32 := 16#451bdd8a#;
   pragma Export (C, u00255, "ada__command_lineB");
   u00256 : constant Version_32 := 16#d59e21a4#;
   pragma Export (C, u00256, "ada__command_lineS");
   u00257 : constant Version_32 := 16#084c16d0#;
   pragma Export (C, u00257, "gnat__regexpS");
   u00258 : constant Version_32 := 16#933fac2f#;
   pragma Export (C, u00258, "system__regexpB");
   u00259 : constant Version_32 := 16#e01a8d6b#;
   pragma Export (C, u00259, "system__regexpS");
   u00260 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00260, "gnat__stringsS");
   u00261 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00261, "system__assertionsB");
   u00262 : constant Version_32 := 16#0ea50633#;
   pragma Export (C, u00262, "system__assertionsS");
   u00263 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00263, "system__concat_4B");
   u00264 : constant Version_32 := 16#bd4c0187#;
   pragma Export (C, u00264, "system__concat_4S");
   u00265 : constant Version_32 := 16#1bec56b8#;
   pragma Export (C, u00265, "system__random_numbersB");
   u00266 : constant Version_32 := 16#00309a3d#;
   pragma Export (C, u00266, "system__random_numbersS");
   u00267 : constant Version_32 := 16#880b169f#;
   pragma Export (C, u00267, "system__random_seedB");
   u00268 : constant Version_32 := 16#983803fc#;
   pragma Export (C, u00268, "system__random_seedS");
   u00269 : constant Version_32 := 16#dfb02f8b#;
   pragma Export (C, u00269, "system__scalar_valuesB");
   u00270 : constant Version_32 := 16#7d8c2df0#;
   pragma Export (C, u00270, "system__scalar_valuesS");
   u00271 : constant Version_32 := 16#ce83633b#;
   pragma Export (C, u00271, "system__tasking__protected_objects__operationsB");
   u00272 : constant Version_32 := 16#902e29cd#;
   pragma Export (C, u00272, "system__tasking__protected_objects__operationsS");
   u00273 : constant Version_32 := 16#d3d9b1ce#;
   pragma Export (C, u00273, "system__tasking__entry_callsB");
   u00274 : constant Version_32 := 16#ddf2aa0b#;
   pragma Export (C, u00274, "system__tasking__entry_callsS");
   u00275 : constant Version_32 := 16#9dcd4743#;
   pragma Export (C, u00275, "system__tasking__rendezvousB");
   u00276 : constant Version_32 := 16#3e44c873#;
   pragma Export (C, u00276, "system__tasking__rendezvousS");
   u00277 : constant Version_32 := 16#fc9da4b5#;
   pragma Export (C, u00277, "system__tasking__stagesB");
   u00278 : constant Version_32 := 16#21a9077d#;
   pragma Export (C, u00278, "system__tasking__stagesS");
   u00279 : constant Version_32 := 16#f89f7823#;
   pragma Export (C, u00279, "system__val_boolB");
   u00280 : constant Version_32 := 16#39ba46b9#;
   pragma Export (C, u00280, "system__val_boolS");
   u00281 : constant Version_32 := 16#4b37b589#;
   pragma Export (C, u00281, "system__val_enumB");
   u00282 : constant Version_32 := 16#78326832#;
   pragma Export (C, u00282, "system__val_enumS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.exp_int%s
   --  system.exp_int%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.task_info%s
   --  system.task_info%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_bool%s
   --  system.val_enum%s
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.val_enum%b
   --  system.val_bool%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.superbounded%s
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.extensions%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.containers.helpers%s
   --  ada.containers.helpers%b
   --  system.os_constants%s
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  ada.task_identification%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  gnat.directory_operations%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.random_numbers%s
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.scalar_values%s
   --  system.scalar_values%b
   --  system.secondary_stack%s
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  system.file_io%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.superbounded%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.command_line%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  system.random_numbers%b
   --  gnat.directory_operations%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.regexp%s
   --  system.regexp%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.utilities%s
   --  ada.task_identification%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gnat.command_line%b
   --  ada.text_io.float_aux%s
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  exceptions%s
   --  exceptions%b
   --  fifo%s
   --  fifo%b
   --  generic_fifo%s
   --  generic_fifo%b
   --  generic_router_links%s
   --  generic_router_links%b
   --  id_dispenser%s
   --  id_dispenser%b
   --  topologies%s
   --  topologies%b
   --  routers_configuration_structures%s
   --  routers_configuration_structures%b
   --  generic_routers_configuration%s
   --  generic_message_structures%s
   --  generic_router%s
   --  generic_router%b
   --  generic_routers%s
   --  generic_routers%b
   --  test_routers%b
   --  END ELABORATION ORDER


end ada_main;
