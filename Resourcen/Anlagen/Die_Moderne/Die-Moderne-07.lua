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
DS_1 = "f=4,p=Rot,q=#Opal Vitaro MEDIA MARKT;004|#Feuerwehr_DLK_HB3_V8|#Limousine_01_NP1;002|#ADAC_PKW_Abschlepper;003,w=0,"
DS_2 = "f=6,p=Rot,q=#KL-Strassendienst-Pritsche-kurz_SM1|#Auflieger_Hasseroeder_HB3|#Mannschaftsbus Dynamo Dresden_MSC1|#ADAC_Actros|#Taxi-Van;001|#Kaessbohrer Tankauflieger SHELL (v8),w=2,"
DS_3 = "f=0,p=Rot,q=,w=7,"
DS_4 = "f=0,p=Rot,q=,w=1,"
DS_5 = "f=1,p=Rot,q=#Solaris Urbino 12 gelb (v8),w=1,"
DS_6 = "f=3,p=Gruen,q=#Mittelklasse_PKW_lindgruen_NP1|#Reisebus Flixbus2_XXX1;001|#Ford Galaxy ADAC,w=0,"
DS_7 = "f=6,p=Rot,q=#Auflieger_Schweiger_HB3|#EF_Polizei_VWT4_02_ST_NP1;001|#Maluch 126 p dunkelgrün|#Delta Julia blau|#Acros_Schweiger_Pritsche_HB3;020|#Acros_BASF_HB3,w=0,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=19,"
DS_11 = "f=0,p=Rot,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=2,"
DS_13 = "f=0,p=Rot,q=,w=2,"
DS_14 = "f=2,p=Rot,q=#Limousine_11|#Taxi_Limousine_01,w=1,"
DS_15 = "f=0,p=Rot,q=,w=5,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag,w=0,"
DS_17 = "f=6,p=Rot,q=#Limousine_01_NP1;004|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Slavia Roomba blau|#Feuerwehr_HFL10_HB3_V8|#EF_Polizei_VWT4_02_ST_NP1;004|#Citaro_01c_LE-Ue_UK2_v7;001,w=1,"
DS_18 = "f=0,p=Rot,q=,w=6,"
DS_19 = "f=2,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;002|#Limousine_02_NP1,w=1,"
DS_20 = "f=2,p=Rot,q=#Mittelklasse_PKW_rot_NP1|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK,w=1,"
DS_21 = "f=2,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;005|#Slavia Roomba rot,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
