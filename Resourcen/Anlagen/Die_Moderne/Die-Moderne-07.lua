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
DS_1 = "f=1,p=Rot,q=#TSF_FS_KW1,w=0,"
DS_2 = "f=9,p=Rot,q=#Mannschaftsbus Dynamo Dresden_MSC1|#Reisebus Flixbus2_XXX1;001|#ADAC_LKW_Abschlepper|#EF_Polizei_VWT4_02_ST_NP1;001|#EF_Polizei_VWT4_02_ST_NP1;003|#Mittelklasse_PKW_rot_NP1|#Feuerwehr_DLK_HB3_V8|#Taxi_Limousine_01|#New-Bug-rot_SM1,w=2,"
DS_3 = "f=0,p=Rot,q=,w=0,"
DS_4 = "f=0,p=Rot,q=,w=2,"
DS_5 = "f=5,p=Rot,q=#Kaessbohrer Tankauflieger BP (v8)|#ADAC_PKW_Abschlepper;003|#Opal Vitaro MEDIA MARKT;003|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Ford Galaxy ADAC,w=7,"
DS_6 = "f=3,p=Gruen,q=#Limousine_01_NP1;006|#Auflieger_Mobil_HB3|#Ford_Transit 1 Pick-up blau 2m (v8);001,w=1,"
DS_7 = "f=0,p=Gruen,q=,w=0,"
DS_8 = "f=0,p=Gruen,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=4,"
DS_11 = "f=0,p=Gruen,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=8,"
DS_13 = "f=0,p=Rot,q=,w=8,"
DS_14 = "f=0,p=Rot,q=,w=0,"
DS_15 = "f=1,p=Gruen,q=#6MGT Wagen 1 Drewag;001,w=11,"
DS_16 = "f=0,p=Gruen,q=,w=1,"
DS_17 = "f=1,p=Rot,q=#Limousine_02_NP1,w=0,"
DS_18 = "f=0,p=Gruen,q=,w=3,"
DS_19 = "f=5,p=Rot,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Feuerwehr_HFL10_HB3_V8|#Limousine_12|#Kaessbohrer Tankauflieger SHELL (v8)|#Delta Julia blau,w=7,"
DS_20 = "f=1,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;006,w=0,"
DS_21 = "f=0,p=Rot,q=,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
