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

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
-- Crossing.zaehlerZuruecksetzen()


[EEPLuaData]
DS_1 = "f=2,p=Rot,q=#Taxi_Limousine_02|#ADAC_Actros,w=1,"
DS_2 = "f=6,p=Gruen,q=#VW T6 Taxi DL1;001|#EF_Polizei_VWT4_02_ST_NP1;001|#ADAC_PKW_Abschlepper;003|#Limousine_01_NP1;003|#Kaessbohrer Tankauflieger BP (v8)|#Maluch 126 p dunkelgrün,w=0,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Feuerwehr_MLF_HB3_V8|#Kaessbohrer Tankauflieger AGIP (v8)|#Taxi-Van;001,w=4,"
DS_6 = "f=6,p=Rot,q=#Auflieger_AVIA_HB3|#KL-Strassendienst-Pritsche-kurz_SM1|#EF_Polizei_VWT4_02_ST_NP1;004|#TSF_FS_KW1|#Slavia Roomba rot|#Slavia Roomba ocker,w=1,"
DS_7 = "f=6,p=Rot,q=#Audi A7 Schwarz|#Limousine_02_NP1|#Auflieger_Hasseroeder_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Audi A7 WeiB|#Limousine_11,w=1,"
DS_8 = "f=0,p=Gruen,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=2,"
DS_11 = "f=0,p=Rot,q=,w=0,"
DS_12 = "f=0,p=Rot,q=,w=0,"
DS_13 = "f=0,p=Rot,q=,w=0,"
DS_14 = "f=4,p=Rot,q=#Taxi_Limousine_01|#Auflieger_Schweiger_HB3|#Maluch 126 p Karminrot|#Acros_Schweiger_Pritsche_HB3;018,w=1,"
DS_15 = "f=0,p=Rot,q=,w=4,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag;001,w=2,"
DS_17 = "f=8,p=Fussg,q=#Crafter_SW301_Kasten_AE1_AVIS|#Taxi-Van|#Slavia Roomba blau|#VW T6 Taxi DL1|#Auflieger_Mobil_HB3|#Reisebus Flixbus2_XXX1;003|#Citaro_01c_LE-Ue_UK2_v7;001|#Acros_BASF_HB3,w=1,"
DS_18 = "f=0,p=Rot,q=,w=3,"
DS_19 = "f=4,p=Rot,q=#Feuerwehr_DLK_HB3_V8|#Mittelklasse_PKW_rot_NP1|#Limousine_01_NP1;001|#Mittelklasse_PKW_lindgruen_NP1,w=4,"
DS_20 = "f=5,p=Rot,q=#ADAC_LKW_Abschlepper|#Ford Galaxy ADAC|#ADAC_PKW_Abschlepper|#Mittelklasse_PKW_blau_NP1|#EF_Polizei_VWT4_02_ST_NP1;002,w=1,"
DS_21 = "f=4,p=Rot,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#KL-Gartenbau-Pritsche-kurz_SM1|#EF_Polizei_VWT4_02_ST_NP1;005|#Acros_Schweiger_Pritsche_HB3;006,w=1,"
DS_22 = "reqInfo=true,seqInfo=false,sigInfo=false,"
