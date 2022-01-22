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
DS_1 = "f=3,p=Rot,q=#Mannschaftsbus Dynamo Dresden_MSC1|#Auflieger_Schweiger_HB3|#VWT6r 02 DL1,w=1,"
DS_2 = "f=6,p=Rot,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#VW T6 Taxi DL1;001|#KL-Strassendienst-Pritsche-kurz_SM1|#Taxi_Limousine_01|#Kaessbohrer Tankauflieger AGIP (v8)|#Limousine_11,w=3,"
DS_3 = "f=0,p=Rot,q=,w=1,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=2,p=Gruen,q=#Lastwagen Hornbach 01|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8),w=0,"
DS_6 = "f=3,p=Gruen,q=#Limousine_01_NP1;002|#MAN Citybus 1 GLA gelb CR1|#Reisebus Flixbus2_XXX1;003,w=0,"
DS_7 = "f=3,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;020|#Audi A7 Schwarz|#EF_Polizei_VWT4_02_ST_NP1,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=14,"
DS_11 = "f=0,p=Rot,q=,w=3,"
DS_12 = "f=0,p=Fussg,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=2,p=Gruen,q=#ADAC_LKW_Abschlepper|#BMW 318 Touring Polizei blau SM1,w=0,"
DS_15 = "f=2,p=Gruen,q=#Linie 10 - Zug 2|#Linie 10 - Zug 01,w=0,"
DS_16 = "f=0,p=Rot,q=,w=0,"
DS_17 = "f=7,p=Fussg,q=#Taxi-Van;001|#Opal Vitaro MEDIA MARKT;003|#Maluch 126 p Karminrot|#Limousine_01_NP1;004|#MAN Citybus gelb CR1|#MAN Citybus 1 GLA gelb CR1;001|#Mittelklasse_PKW_Taxi_NP1,w=1,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=2,p=Gruen,q=#Slavia Roomba rot|#Auflieger_AVIA_HB3,w=0,"
DS_20 = "f=2,p=Gruen,q=#EF_Polizei_VWT4_02_ST_NP1;001|#Acros_Schweiger_Pritsche_HB3;006,w=0,"
DS_21 = "f=3,p=Rot,q=#Reisebus Flixbus2_XXX1;001|#VW T6 Taxi DL1|#Slavia Roomba blau,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
