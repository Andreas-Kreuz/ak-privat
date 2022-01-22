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
DS_1 = "f=4,p=Rot,q=#Audi A7 Schwarz|#Reisebus Flixbus2_XXX1;001|#VW T6 Taxi DL1|#Reisebus Flixbus2_XXX1;003,w=2,"
DS_2 = "f=1,p=Rot,q=#ADAC_Actros,w=1,"
DS_3 = "f=0,p=Rot,q=,w=8,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=5,p=Rot,q=#Ford Galaxy ADAC|#MAN Citybus 1 GLA gelb CR1|#Opal Vitaro MEDIA MARKT;003|#KL-Strassendienst-Pritsche-kurz_SM1|#Limousine_11,w=0,"
DS_6 = "f=4,p=Rot,q=#KL-Gartenbau-Pritsche-kurz_SM1|#Limousine_01_NP1;003|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Kaessbohrer Tankauflieger BP (v8),w=0,"
DS_7 = "f=2,p=Rot,q=#Auflieger_AVIA_HB3|#Mannschaftsbus Dynamo Dresden_MSC1,w=2,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=6,"
DS_11 = "f=0,p=Rot,q=,w=1,"
DS_12 = "f=0,p=Rot,q=,w=12,"
DS_13 = "f=0,p=Rot,q=,w=12,"
DS_14 = "f=2,p=Rot,q=#Slavia Roomba grün|#Acros_Schweiger_Pritsche_HB3;020,w=1,"
DS_15 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=0,"
DS_16 = "f=0,p=Rot,q=,w=0,"
DS_17 = "f=5,p=Rot,q=#BMW 318 Touring Polizei blau SM1|#Auflieger_BASF_HB3|#Mittelklasse_PKW_blau_NP1|#Lastwagen Hornbach 01|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8),w=1,"
DS_18 = "f=0,p=Rot,q=,w=0,"
DS_19 = "f=5,p=Rot,q=#Limousine_01_NP1;002|#Taxi-Van;001|#VW T6 Taxi DL1;001|#Kaessbohrer Tankauflieger AGIP (v8)|#Limousine_01_NP1;004,w=0,"
DS_20 = "f=0,p=Rot,q=,w=1,"
DS_21 = "f=0,p=Rot,q=,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
