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
DS_1 = "f=6,p=Rot,q=#Slavia Roomba blau|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Auflieger_AVIA_HB3|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Taxi_Limousine_01|#KL-Gartenbau-Pritsche-kurz_SM1,w=2,"
DS_2 = "f=8,p=Rot,q=#Mittelklasse_PKW_blau_NP1|#Opal Vitaro MEDIA MARKT;004|#New-Bug-rot_SM1|#EF_Polizei_VWT4_02_ST_NP1|#Kaessbohrer Tankauflieger BP (v8)|#Mittelklasse_PKW_Taxi_NP1|#Kaessbohrer Tankauflieger AGIP (v8)|#Citaro_01c_LE-Ue_UK2_v7;001,w=6,"
DS_3 = "f=0,p=Rot,q=,w=2,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Mannschaftsbus Dynamo Dresden_MSC1|#Citaro_01b_LE-Ue_UK2_v7|#Slavia Roomba grün|#Limousine_01_NP1;004,w=0,"
DS_6 = "f=0,p=Gruen,q=,w=0,"
DS_7 = "f=4,p=Gruen,q=#Acros_Schweiger_Pritsche_HB3;018|#Limousine_01_NP1;006|#ADAC_LKW_Abschlepper|#Limousine_01_NP1;002,w=2,"
DS_8 = "f=0,p=Gruen,q=,w=2,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=1,"
DS_11 = "f=0,p=Gruen,q=,w=6,"
DS_12 = "f=0,p=Rot,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=1,p=Rot,q=#Feuerwehr_MLF_HB3_V8,w=2,"
DS_15 = "f=1,p=Gruen,q=#6MGT Wagen 1 Elbe Park Dresden;001,w=0,"
DS_16 = "f=0,p=Gruen,q=,w=0,"
DS_17 = "f=3,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;020|#EF_Polizei_VWT4_02_ST_NP1;004|#ADAC_PKW_Abschlepper;002,w=2,"
DS_18 = "f=0,p=Gruen,q=,w=0,"
DS_19 = "f=4,p=Rot,q=#Ford Galaxy ADAC|#Taxi_Limousine_02|#Feuerwehr_HFL10_HB3_V8|#Slavia Roomba rot,w=0,"
DS_20 = "f=4,p=Rot,q=#KL-Strassendienst-Pritsche-kurz_SM1|#Acros_Schweiger_HB3|#ADAC_PKW_Abschlepper|#Limousine_01_NP1;001,w=2,"
DS_21 = "f=2,p=Rot,q=#Kaessbohrer Tankauflieger SHELL (v8)|#Acros_Schweiger_Pritsche_HB3;006,w=2,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=true,"
