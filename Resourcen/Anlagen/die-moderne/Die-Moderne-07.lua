clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
print("Lade EEP-13-die-Moderne-07-main ...")
require("ak.anlagen.die-moderne.Die-Moderne-07-main")

--------------------------------------------------------------------
-- Zeige erweiterte Informationen an                              --
--------------------------------------------------------------------
AkPlaner.debug = false
AkSpeicherHilfe.debug = false
AkAmpel.debug = false
AkKreuzung.debug = false
AkKreuzung.zeigeSignalIdsAllerSignale = false
AkKreuzung.zeigeAnforderungenAlsInfo = false
AkKreuzung.zeigeSchaltungAlsInfo = false

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
-- AkKreuzung.zaehlerZuruecksetzen()


[EEPLuaData]
DS_1 = "f=3,p=Rot,w=1,"
DS_2 = "f=5,p=Gruen,w=0,"
DS_3 = "f=0,p=Gruen,w=1,"
DS_4 = "f=0,p=Rot,w=3,"
DS_5 = "f=8,p=Rot,w=3,"
DS_6 = "f=1,p=Rot,w=1,"
DS_7 = "f=2,p=Rot,w=1,"
DS_8 = "f=1,p=Rot,w=0,"
DS_9 = "f=0,p=Gruen,w=0,"
DS_10 = "f=0,p=Rot,w=24,"
DS_11 = "f=0,p=Rot,w=0,"
DS_12 = "f=0,p=Rot,w=4,"
DS_13 = "f=0,p=Rot,w=4,"
DS_14 = "f=4,p=Gruen,w=0,"
DS_15 = "f=0,p=Gruen,w=1,"
DS_16 = "f=0,p=Rot,w=1,"
DS_17 = "f=11,p=Gruen,w=0,"
DS_18 = "f=0,p=Gruen,w=1,"
