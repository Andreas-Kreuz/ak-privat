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
DS_1 = "f=6,p=Rot,q=#Lastwagen Hornbach 01|#Kaessbohrer Tankauflieger BP (v8)|#Limousine_01_NP1;001|#Slavia Roomba ocker|#EF_Polizei_VWT4_02_ST_NP1|#Auflieger_BASF_HB3,w=0,"
DS_2 = "f=6,p=Rot,q=#Crafter_SW301_Kasten_AE1_AVIS|#Mittelklasse_PKW_blau_NP1|#Limousine_01_NP1;004|#Ford Galaxy ADAC|#Reisebus Flixbus2_XXX1;003|#EF_Polizei_VWT4_02_ST_NP1;004,w=6,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=1,"
DS_5 = "f=1,p=Rot,q=#Maluch 126 p Karminrot,w=1,"
DS_6 = "f=3,p=Gruen,q=#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Auflieger_Schweiger_HB3|#BMW 318 Touring Polizei blau SM1,w=0,"
DS_7 = "f=4,p=Gruen,q=#Acros_Schweiger_Pritsche_HB3;020|#Auflieger_AVIA_HB3|#Mannschaftsbus Dynamo Dresden_MSC1|#Limousine_02_NP1,w=0,"
DS_8 = "f=1,p=Rot,q=#Linie 10 - Zug 01,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=15,"
DS_11 = "f=0,p=Rot,q=,w=6,"
DS_12 = "f=0,p=Rot,q=,w=17,"
DS_13 = "f=0,p=Rot,q=,w=17,"
DS_14 = "f=4,p=Rot,q=#Limousine_01_NP1;003|#ADAC_PKW_Abschlepper;002|#Auflieger_Hasseroeder_HB3|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001,w=1,"
DS_15 = "f=0,p=Rot,q=,w=4,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 Elbe Park Dresden;001,w=0,"
DS_17 = "f=6,p=Rot,q=#Taxi-Van;001|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Kaessbohrer Tankauflieger SHELL (v8)|#MAN Citybus gelb CR1|#VWT6r 09 DL1|#Maluch 126 p dunkelgrün,w=1,"
DS_18 = "f=0,p=Rot,q=,w=4,"
DS_19 = "f=1,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003,w=1,"
DS_20 = "f=4,p=Rot,q=#Opal Vitaro MEDIA MARKT;003|#Mittelklasse_PKW_lindgruen_NP1|#EF_Polizei_VWT4_02_ST_NP1;005|#Limousine_01_NP1;006,w=1,"
DS_21 = "f=2,p=Rot,q=#VW T6 Taxi DL1|#Limousine_01_NP1;002,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
