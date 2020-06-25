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
DS_1 = "f=0,p=Rot,q=,w=1,"
DS_2 = "f=11,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1|#Limousine_11|#Acros_Schweiger_Pritsche_HB3;020|#Taxi_Limousine_02|#ADAC_PKW_Abschlepper;003|#Reisebus Flixbus2_XXX1;003|#Limousine_01_NP1;004|#Mittelklasse_PKW_lindgruen_NP1|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#ADAC_LKW_Abschlepper,w=0,"
DS_3 = "f=0,p=Rot,q=,w=1,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=3,p=Rot,q=#TSF_FS_KW1|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Opal Vitaro MEDIA MARKT;004,w=2,"
DS_6 = "f=1,p=Rot,q=#Feuerwehr_HFL10_HB3_V8,w=2,"
DS_7 = "f=0,p=Rot,q=,w=1,"
DS_8 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=16,"
DS_11 = "f=0,p=Rot,q=,w=0,"
DS_12 = "f=0,p=Rot,q=,w=6,"
DS_13 = "f=0,p=Rot,q=,w=6,"
DS_14 = "f=8,p=Rot,q=#Limousine_01_NP1;002|#Taxi_Limousine_01|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Acros_Schweiger_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Limousine_01_NP1;003|#Crafter_SW301_Kasten_AE1_AVIS|#Taxi-Van;001,w=0,"
DS_15 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag,w=2,"
DS_16 = "f=0,p=Rot,q=,w=1,"
DS_17 = "f=7,p=Rot,q=#Maluch 126 p Karminrot|#Limousine_01_NP1;006|#EF_Polizei_VWT4_02_ST_NP1;002|#Kaessbohrer Tankauflieger AGIP (v8)|#Slavia Roomba ocker|#EF_Polizei_VWT4_02_ST_NP1;003|#Ford Galaxy ADAC,w=0,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=3,p=Rot,q=#ADAC_PKW_Abschlepper;002|#EF_Polizei_VWT4_02_ST_NP1;004|#Citaro_01c_LE-Ue_UK2_v7;001,w=2,"
DS_20 = "f=6,p=Rot,q=#Slavia Roomba rot|#Mannschaftsbus Dynamo Dresden_MSC1|#Kaessbohrer Tankauflieger SHELL (v8)|#Limousine_02_NP1|#Slavia Roomba grün|#KL-Gartenbau-Pritsche-kurz_SM1,w=0,"
DS_21 = "f=4,p=Rot,q=#Solaris Urbino 12 gelb (v8)|#Slavia Roomba blau|#EF_Polizei_VWT4_02_ST_NP1;001|#Auflieger_AVIA_HB3,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
