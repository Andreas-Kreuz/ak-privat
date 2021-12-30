clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
print("Lade Die-Moderne-EEP-17-main ...")
require("ak.anlagen.die-moderne.Die-Moderne-EEP-17-main")

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
DS_1 = "f=6,p=Rot,q=#BMW 318 Touring Polizei blau SM1|#Limousine_12|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Taxi_Limousine_01|#Acros_Schweiger_HB3|#Maluch 126 p Karminrot,w=3,"
DS_2 = "f=3,p=Rot,q=#Auflieger_AVIA_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Kaessbohrer Tankauflieger BP (v8),w=1,"
DS_3 = "f=0,p=Rot,q=,w=5,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=3,p=Gruen,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Limousine_01_NP1;003|#VW T6 Taxi DL1,w=0,"
DS_6 = "f=1,p=Gruen,q=#EF_Polizei_VWT4_02_ST_NP1,w=0,"
DS_7 = "f=1,p=Rot,q=#Taxi_Limousine_02,w=3,"
DS_8 = "f=1,p=Rot,q=#Linie 10 - Zug 01,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=14,"
DS_11 = "f=0,p=Rot,q=,w=1,"
DS_12 = "f=0,p=Rot,q=,w=6,"
DS_13 = "f=0,p=Rot,q=,w=6,"
DS_14 = "f=5,p=Gruen,q=#Limousine_11|#EF_Polizei_VWT4_02_ST_NP1;003|#Taxi-Van;001|#Audi A7 Schwarz|#Citaro_01b_LE-Ue_UK2_v7,w=0,"
DS_15 = "f=1,p=Rot,q=#6MGT Wagen 1 Elbe Park Dresden;001,w=3,"
DS_16 = "f=0,p=Rot,q=,w=1,"
DS_17 = "f=10,p=Gruen,q=#Slavia Roomba ocker|#EF_Polizei_VWT4_02_ST_NP1;005|#VWT6r DHL DL1|#Acros_BASF_HB3|#EF_Polizei_VWT4_02_ST_NP1;002|#Slavia Roomba rot|#Audi A7 WeiB|#KL-Strassendienst-Pritsche-kurz_SM1|#Maluch 126 p dunkelgrün|#Acros_Schweiger_Pritsche_HB3;006,w=0,"
DS_18 = "f=0,p=Rot,q=,w=7,"
DS_19 = "f=3,p=Gruen,q=#New-Bug-rot_SM1|#Auflieger_Hasseroeder_HB3|#VWT6r 02 DL1,w=0,"
DS_20 = "f=1,p=Gruen,q=#VW T6 Taxi DL1;001,w=0,"
DS_21 = "f=5,p=Gruen,q=#Feuerwehr_DLK_HB3_V8|#Taxi-Van|#EF_Polizei_VWT4_02_ST_NP1;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Reisebus Flixbus2_XXX1;003,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
