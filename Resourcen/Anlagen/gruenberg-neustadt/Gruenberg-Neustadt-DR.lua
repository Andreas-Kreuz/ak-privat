clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
print("Lade Gruenberg-Neustadt-DR-main.lua ...")
require("ak.anlagen.gruenberg-neustadt.Gruenberg-Neustadt-DR-main")

--------------------------------------------------------------------
-- Zeige erweiterte Informationen an                              --
--------------------------------------------------------------------
-- AkPlaner.debug = false
-- AkSpeicherHilfe.debug = false
-- AkAmpel.debug = false
-- AkKreuzung.debug = false
-- AkKreuzung.zeigeSignalIdsAllerSignale = false
-- AkKreuzung.zeigeAnforderungenAlsInfo = false
-- AkKreuzung.zeigeSchaltungAlsInfo = false

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
-- AkKreuzung.zaehlerZuruecksetzen()

[EEPLuaData]
DS_1 = "b=false,n=Block 1 Gl1 -> GBG Gleis 2,t=-1,z=nil,"
DS_2 = "b=false,n=Block 1 Gl1 -> GBG Gleis 3,t=-1,z=nil,"
DS_3 = "b=false,n=Block 1 Gl1 -> GBG Gleis 4,t=-1,z=nil,"
DS_4 = "b=false,n=GBG Gleis 2 -> Block 2 Gl1,t=-1,z=nil,"
DS_5 = "b=true,n=GBG Gleis 3 -> Block 2 Gl1,t=-1,z=#DDR - Gueterzug - Fernverkehr - DR119 Tankzug,"
DS_6 = "b=false,n=GBG Gleis 4 -> Block 2 Gl1,t=-1,z=nil,"
DS_7 = "b=false,n=Block 2 Gl1 -> NST Gleis 1,t=-1,z=nil,"
DS_8 = "b=false,n=Block 2 Gl1 -> NST Gleis 2,t=-1,z=nil,"
DS_9 = "b=false,n=Block 2 Gl1 -> NST Gleis 4,t=-1,z=nil,"
DS_10 = "b=false,n=Block 2 Gl1 -> NST Gleis 5,t=-1,z=nil,"
DS_11 = "b=false,n=NST Gleis 1 -> Block 3 Gl1,t=-1,z=nil,"
DS_12 = "b=false,n=NST Gleis 2 -> Block 3 Gl1,t=-1,z=nil,"
DS_13 = "b=false,n=NST Gleis 4 -> Block 3 Gl1,t=-1,z=nil,"
DS_14 = "b=false,n=NST Gleis 5 -> Block 3 Gl1,t=-1,z=nil,"
DS_15 = "b=false,n=Block 3 Gl1 -> Block 4 Gl1,t=-1,z=nil,"
DS_20 = "b=true,n=Block Sb West -> Block 3 Gl2,t=-1,z=#DDR - Gueterzug - Fernverkehr - DR254 gemischter Güterzug,"
DS_21 = "b=false,n=Block 3 Gl2 -> NST Gleis 3,t=-1,z=nil,"
DS_22 = "b=false,n=Block 3 Gl2 -> NST Gleis 4,t=-1,z=nil,"
DS_25 = "b=false,n=NST Gleis 3 -> Block 2 Gl2,t=-1,z=nil,"
DS_26 = "b=false,n=NST Gleis 4 -> Block 2 Gl2,t=-1,z=nil,"
DS_28 = "b=true,n=Block 2 Gl2 -> GBG Gleis 1,t=-1,z=#DDR - Gueterzug - Fernverkehr - DR120 Kohlezug,"
DS_29 = "b=false,n=Block 2 Gl2 -> GBG Gleis 3,t=-1,z=nil,"
DS_30 = "b=false,n=Block 2 Gl2 -> GBG Gleis 4,t=-1,z=nil,"
DS_31 = "b=false,n=GBG Gleis 1 -> Block 1 Gl2,t=-1,z=nil,"
DS_32 = "b=false,n=GBG Gleis 3 -> Block 1 Gl2,t=-1,z=nil,"
DS_33 = "b=false,n=GBG Gleis 4 -> Block 1 Gl2,t=-1,z=nil,"
DS_34 = "b=true,n=Block 1 Gl2 -> Block Sb Ost,t=-1,z=#DDR - Personenzug - Nahverkehr DR 119-146,"
DS_100 = "b=true,n=Block Sb Ost,z=#DDR - Personenzug - Nahverkehr DR 119-146,"
DS_101 = "b=true,n=Block 1 Gl1,r=West,z=#DDR - Gueterzug - Fernverkehr - DR50 3556-3 gemischt,"
DS_102 = "b=true,n=GBG Gleis 1,z=#DDR - Gueterzug - Fernverkehr - DR120 Kohlezug,"
DS_103 = "b=true,n=GBG Gleis 2,r=West,z=#DDR - Personenzug - Fernverkehr - BR 132 Express,"
DS_104 = "b=true,n=GBG Gleis 3,r=West,z=#DDR - Gueterzug - Fernverkehr - DR119 Tankzug,"
DS_105 = "b=true,n=GBG Gleis 4,r=West,z=#DDR - Gueterzug - Fernverkehr - DR 243 gemischte Gueter,"
DS_106 = "b=true,n=Block 2 Gl1,z=#DDR - Gueterzug - Fernverkehr - DR119 Tankzug,"
DS_107 = "b=false,n=NST Gleis 1,"
DS_108 = "b=false,n=NST Gleis 2,"
DS_109 = "b=true,n=NST Gleis 3,r=Ost,z=#DDR - Gueterzug - Fernverkehr - DR 120 - gemischter Gueter2,"
DS_110 = "b=false,n=NST Gleis 4,"
DS_111 = "b=false,n=NST Gleis 5,"
DS_114 = "b=false,n=Block 3 Gl1,"
DS_115 = "b=false,n=Block 4 Gl1,"
DS_116 = "b=true,n=Block 1 Gl2,r=Ost,z=#DDR - Personenzug - Nahverkehr DR 119-146,"
DS_117 = "b=true,n=Block 2 Gl2,r=Ost,z=#DDR - Gueterzug - Fernverkehr - DR120 Kohlezug,"
DS_118 = "b=true,n=Block 3 Gl2,z=#DDR - Gueterzug - Fernverkehr - DR254 gemischter Güterzug,"
DS_119 = "b=true,n=Block Sb West,r=Ost,z=#DDR - Gueterzug - Fernverkehr - DR254 gemischter Güterzug,"
