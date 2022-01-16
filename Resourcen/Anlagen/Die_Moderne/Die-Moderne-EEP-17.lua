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
DS_1 = "f=3,p=Rot,q=#MAN Citybus 1 GLA gelb CR1;001|#KL-Strassendienst-Pritsche-kurz_SM1|#Slavia Roomba rot,w=1,"
DS_2 = "f=8,p=Rot,q=#Auflieger_AVIA_HB3|#Ford_Transit 1 Pick-up blau 2m (v8);001|#EF_Polizei_VWT4_02_ST_NP1;003|#Feuerwehr_HFL10_HB3_V8|#Opal Vitaro MEDIA MARKT;004|#New-Bug-rot_SM1|#Acros_BASF_HB3|#Limousine_01_NP1;001,w=4,"
DS_3 = "f=0,p=Rot,q=,w=2,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=5,p=Rot,q=#Ford Galaxy ADAC|#ADAC_Actros|#EF_Polizei_VWT4_02_ST_NP1;002|#Mittelklasse_PKW_rot_NP1|#Kaessbohrer Tankauflieger AGIP (v8),w=0,"
DS_6 = "f=1,p=Gruen,q=#Maluch 126 p dunkelgrün,w=0,"
DS_7 = "f=0,p=Rot,q=,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=13,"
DS_11 = "f=0,p=Rot,q=,w=4,"
DS_12 = "f=0,p=Fussg,q=,w=12,"
DS_13 = "f=0,p=Rot,q=,w=12,"
DS_14 = "f=3,p=Gruen,q=#Mittelklasse_PKW_lindgruen_NP1|#EF_Polizei_VWT4_02_ST_NP1;004|#BMW 318 Touring Polizei blau SM1,w=0,"
DS_15 = "f=0,p=Rot,q=,w=1,"
DS_16 = "f=0,p=Rot,q=,w=1,"
DS_17 = "f=8,p=Rot,q=#MAN Citybus gelb CR1|#Acros_Schweiger_Pritsche_HB3;006|#Mannschaftsbus Dynamo Dresden_MSC1|#Taxi_Limousine_01|#ADAC_PKW_Abschlepper;003|#VW T6 Taxi DL1;001|#ADAC_PKW_Abschlepper|#KL-Gartenbau-Pritsche-kurz_SM1,w=0,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=3,p=Rot,q=#VW T6 Taxi DL1|#Limousine_01_NP1;006|#Auflieger_Hasseroeder_HB3,w=0,"
DS_20 = "f=2,p=Gruen,q=#Auflieger_Schweiger_HB3|#Taxi-Van;001,w=0,"
DS_21 = "f=4,p=Rot,q=#Limousine_01_NP1;004|#Reisebus Flixbus2_XXX1;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#VWT6r 09 DL1,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
