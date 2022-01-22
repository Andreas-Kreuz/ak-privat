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
DS_1 = "f=2,p=Fussg,q=#Maluch 126 p Karminrot|#EF_Polizei_VWT4_02_ST_NP1;005,w=1,"
DS_2 = "f=8,p=Rot,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Auflieger_Hasseroeder_HB3|#Slavia Roomba ocker|#MAN Citybus GL FL gelb CR1|#BMW 318 Touring Polizei blau SM1|#EF_Polizei_VWT4_02_ST_NP1;002|#Taxi-Van;001|#Delta Julia blau,w=4,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=2,p=Rot,q=#Auflieger_Mobil_HB3|#Auflieger_Schweiger_HB3,w=2,"
DS_6 = "f=5,p=Rot,q=#VW T6 Taxi DL1|#Taxi_Limousine_01|#MAN Citybus 1 GLA gelb CR1;001|#Limousine_12|#Acros_Schweiger_Pritsche_HB3;020,w=1,"
DS_7 = "f=5,p=Rot,q=#MAN Citybus gelb CR1|#ADAC_PKW_Abschlepper;002|#Mannschaftsbus Dynamo Dresden_MSC1|#EF_Polizei_VWT4_02_ST_NP1;003|#Ford Galaxy ADAC,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=0,"
DS_11 = "f=0,p=Rot,q=,w=4,"
DS_12 = "f=0,p=Fussg,q=,w=10,"
DS_13 = "f=0,p=Rot,q=,w=10,"
DS_14 = "f=0,p=Gruen,q=,w=0,"
DS_15 = "f=0,p=Rot,q=,w=2,"
DS_16 = "f=0,p=Rot,q=,w=2,"
DS_17 = "f=4,p=Gelb,q=#Reisebus Flixbus2_XXX1;003|#Mittelklasse_PKW_lindgruen_NP1|#MAN Citybus 1 GLA gelb CR1|#Auflieger_BASF_HB3,w=0,"
DS_18 = "f=0,p=Rot,q=,w=3,"
DS_19 = "f=2,p=Rot,q=#Mittelklasse_PKW_rot_NP1|#VW T6 Taxi DL1;001,w=2,"
DS_20 = "f=1,p=Gruen,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser,w=0,"
DS_21 = "f=3,p=Gruen,q=#Taxi_Limousine_02|#EF_Polizei_VWT4_02_ST_NP1;004|#Ford_Transit 1 Pick-up blau 2m (v8);001,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
