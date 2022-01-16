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
DS_1 = "f=5,p=Rot,q=#Taxi_Limousine_01|#EF_Polizei_VWT4_02_ST_NP1;004|#ADAC_Actros|#Reisebus Flixbus2_XXX1;001|#BMW 318 Touring Polizei blau SM1,w=1,"
DS_2 = "f=8,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;005|#Limousine_01_NP1;003|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Auflieger_Schweiger_HB3|#Kaessbohrer Tankauflieger BP (v8)|#MAN Citybus 1 GLA gelb CR1;001|#EF_Polizei_VWT4_02_ST_NP1;002|#Ford_Transit 1 Pick-up blau 2m (v8);001,w=8,"
DS_3 = "f=1,p=Rot,q=#Linie 10 - Zug 2,w=9,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=0,p=Rot,q=,w=0,"
DS_6 = "f=4,p=Gruen,q=#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Mittelklasse_PKW_lindgruen_NP1|#Mittelklasse_PKW_blau_NP1|#EF_Polizei_VWT4_02_ST_NP1,w=0,"
DS_7 = "f=6,p=Rot,q=#MAN Citybus 1 GLA gelb CR1|#VWT6r 02 DL1|#Acros_BASF_HB3|#Maluch 126 p dunkelgrün|#Acros_Schweiger_Pritsche_HB3;020|#Limousine_01_NP1;002,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=32,"
DS_11 = "f=0,p=Rot,q=,w=8,"
DS_12 = "f=0,p=Rot,q=,w=4,"
DS_13 = "f=0,p=Rot,q=,w=4,"
DS_14 = "f=4,p=Rot,q=#ADAC_PKW_Abschlepper|#Limousine_12|#Auflieger_AVIA_HB3|#Mittelklasse_PKW_rot_NP1,w=2,"
DS_15 = "f=0,p=Rot,q=,w=6,"
DS_16 = "f=0,p=Gruen,q=,w=0,"
DS_17 = "f=4,p=Rot,q=#ADAC_PKW_Abschlepper;003|#New-Bug-rot_SM1|#Acros_Schweiger_Pritsche_HB3;018|#VWT6r 09 DL1,w=1,"
DS_18 = "f=0,p=Rot,q=,w=1,"
DS_19 = "f=25,p=Gruen,q=#Feuerwehr_HFL10_HB3_V8|#EF_Polizei_VWT4_02_ST_NP1;004|#ADAC_Actros|#Crafter_SW301_Kasten_AE1_AVIS|#Reisebus Flixbus2_XXX1;001|#MAN Citybus gelb CR1|#Kaessbohrer Tankauflieger SHELL (v8)|#Maluch 126 p Karminrot|#Ford Galaxy ADAC|#Limousine_02_NP1|#MAN Citybus 1 GLA gelb CR1|#Limousine_01_NP1;002|#Acros_BASF_HB3|#Reisebus Flixbus2_XXX1;003|#Acros_Schweiger_Pritsche_HB3;006|#Limousine_11|#MAN Citybus FL gelb CR1|#Limousine_01_NP1;006|#KL-Gartenbau-Pritsche-kurz_SM1|#Taxi-Van|#EF_Polizei_VWT4_02_ST_NP1;003|#Auflieger_Hasseroeder_HB3|#Slavia Roomba grün|#Kaessbohrer Tankauflieger AGIP (v8)|#VW T6 Taxi DL1,w=0,"
DS_20 = "f=4,p=Rot,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Slavia Roomba blau|#ADAC_PKW_Abschlepper;002|#VW T6 Taxi DL1;001,w=2,"
DS_21 = "f=3,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;006|#ADAC_LKW_Abschlepper|#Taxi-Van;001,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
