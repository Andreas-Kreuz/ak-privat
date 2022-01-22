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
DS_1 = "f=4,p=Rot,q=#Auflieger_AVIA_HB3|#Mannschaftsbus Dynamo Dresden_MSC1|#EF_Polizei_VWT4_02_ST_NP1;002|#Limousine_12,w=0,"
DS_2 = "f=1,p=Rot,q=#Delta Julia blau,w=1,"
DS_3 = "f=0,p=Rot,q=,w=5,"
DS_4 = "f=0,p=Rot,q=,w=1,"
DS_5 = "f=5,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#ADAC_LKW_Abschlepper|#Mittelklasse_PKW_blau_NP1|#VWT6r 09 DL1,w=3,"
DS_6 = "f=3,p=Rot,q=#Slavia Roomba ocker|#Auflieger_Schweiger_HB3|#ADAC_PKW_Abschlepper;002,w=0,"
DS_7 = "f=4,p=Rot,q=#Limousine_01_NP1;002|#Taxi-Van;001|#VW T6 Taxi DL1;001|#Kaessbohrer Tankauflieger AGIP (v8),w=0,"
DS_8 = "f=1,p=Rot,q=#Linie 10 - Zug 01,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=12,"
DS_11 = "f=0,p=Rot,q=,w=1,"
DS_12 = "f=0,p=Rot,q=,w=3,"
DS_13 = "f=0,p=Rot,q=,w=3,"
DS_14 = "f=3,p=Rot,q=#Audi A7 WeiB|#Acros_Schweiger_Pritsche_HB3;006|#MAN Citybus gelb CR1,w=1,"
DS_15 = "f=0,p=Rot,q=,w=6,"
DS_16 = "f=1,p=Rot,q=#GT4 Serie 2 (2) Wagen B,w=0,"
DS_17 = "f=5,p=Rot,q=#Kaessbohrer Tankauflieger SHELL (v8)|#Slavia Roomba grün|#Acros_Schweiger_Pritsche_HB3;020|#Ford Galaxy ADAC|#MAN Citybus 1 GLA gelb CR1,w=1,"
DS_18 = "f=0,p=Rot,q=,w=6,"
DS_19 = "f=3,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003|#Auflieger_BASF_HB3|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8),w=3,"
DS_20 = "f=3,p=Rot,q=#Crafter_SW301_Kasten_AE1_AVIS|#Mittelklasse_PKW_lindgruen_NP1|#Limousine_01_NP1;003,w=1,"
DS_21 = "f=1,p=Rot,q=#VW T6 Taxi DL1,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
