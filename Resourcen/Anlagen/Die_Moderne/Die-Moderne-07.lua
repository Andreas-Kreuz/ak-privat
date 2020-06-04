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

local TrafficLight = require("ak.road.TrafficLight")
local Scheduler = require("ak.scheduler.Scheduler")
local StorageUtility = require("ak.storage.StorageUtility")
local Crossing = require("ak.road.Crossing")

Scheduler.debug = false
StorageUtility.debug = false
TrafficLight.debug = false
Crossing.debug = false
Crossing.zeigeSignalIdsAllerSignale = false
Crossing.zeigeAnforderungenAlsInfo = true
Crossing.zeigeSchaltungAlsInfo = true

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
Crossing.zaehlerZuruecksetzen()


[EEPLuaData]
DS_1 = "f=1,p=Rot,q=#KL-Gartenbau-Pritsche-kurz_SM1,w=1,"
DS_2 = "f=5,p=Rot,q=#ADAC_LKW_Abschlepper|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Kaessbohrer Tankauflieger SHELL (v8)|#Delta Julia blau|#Acros_Schweiger_Pritsche_HB3;006,w=5,"
DS_3 = "f=0,p=Rot,q=,w=1,"
DS_4 = "f=0,p=Rot,q=,w=2,"
DS_5 = "f=1,p=Rot,q=#ADAC_PKW_Abschlepper;002,w=3,"
DS_6 = "f=5,p=Gruen,q=#Crafter_SW301_Kasten_AE1_AVIS|#Feuerwehr_MLF_HB3_V8|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Opal Vitaro MEDIA MARKT;003|#Slavia Roomba ocker,w=0,"
DS_7 = "f=1,p=Gruen,q=#Auflieger_Mobil_HB3,w=0,"
DS_8 = "f=0,p=Gruen,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=2,"
DS_11 = "f=0,p=Gruen,q=,w=0,"
DS_12 = "f=0,p=Rot,q=,w=2,"
DS_13 = "f=0,p=Rot,q=,w=2,"
DS_14 = "f=5,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003|#Mannschaftsbus Dynamo Dresden_MSC1|#Feuerwehr_DLK_HB3_V8|#Slavia Roomba rot|#ADAC_Actros,w=3,"
DS_15 = "f=1,p=Gruen,q=#6MGT Wagen 1 Drewag,w=0,"
DS_16 = "f=1,p=Gruen,q=#6MGT Wagen 1 DVBAG;001,w=0,"
DS_17 = "f=1,p=Rot,q=#Auflieger_AVIA_HB3,w=1,"
DS_18 = "f=0,p=Gruen,q=,w=0,"
DS_19 = "f=1,p=Rot,q=#Feuerwehr_HFL10_HB3_V8,w=3,"
DS_20 = "f=4,p=Rot,q=#Citaro_01c_LE-Ue_UK2_v7;001|#Solaris Urbino 12 gelb (v8)|#Citaro_01b_LE-Ue_UK2_v7|#Limousine_11,w=3,"
DS_21 = "f=4,p=Rot,q=#KL-Strassendienst-Pritsche-kurz_SM1|#Mittelklasse_PKW_blau_NP1|#Limousine_02_NP1|#Kaessbohrer Tankauflieger BP (v8),w=1,"
