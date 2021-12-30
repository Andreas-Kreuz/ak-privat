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
DS_1 = "f=2,p=Rot,q=#BMW 318 Touring Polizei blau SM1|#Limousine_12,w=1,"
DS_2 = "f=6,p=Rot,q=#Limousine_02_NP1|#Acros_Schweiger_Pritsche_HB3;020|#ADAC_PKW_Abschlepper|#Delta Julia blau|#Limousine_01_NP1;002|#Auflieger_AVIA_HB3,w=0,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#KL-Gartenbau-Pritsche-kurz_SM1|#Kaessbohrer Tankauflieger AGIP (v8)|#Limousine_01_NP1;003,w=4,"
DS_6 = "f=1,p=Rot,q=#Ford Galaxy ADAC,w=1,"
DS_7 = "f=0,p=Rot,q=,w=1,"
DS_8 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=12,"
DS_11 = "f=0,p=Rot,q=,w=0,"
DS_12 = "f=0,p=Rot,q=,w=4,"
DS_13 = "f=0,p=Rot,q=,w=4,"
DS_14 = "f=5,p=Rot,q=#Lastwagen Hornbach 01|#Opal Vitaro MEDIA MARKT;003|#Mittelklasse_PKW_Taxi_NP1|#Limousine_11|#EF_Polizei_VWT4_02_ST_NP1;003,w=1,"
DS_15 = "f=0,p=Rot,q=,w=1,"
DS_16 = "f=1,p=Gruen,q=#Linie 10 - Zug 01,w=0,"
DS_17 = "f=9,p=Fussg,q=#EF_Polizei_VWT4_02_ST_NP1|#Auflieger_Schweiger_HB3|#Slavia Roomba ocker|#EF_Polizei_VWT4_02_ST_NP1;005|#VWT6r DHL DL1|#Acros_BASF_HB3|#EF_Polizei_VWT4_02_ST_NP1;002|#Slavia Roomba rot|#Audi A7 WeiB,w=2,"
DS_18 = "f=0,p=Fussg,q=,w=5,"
DS_19 = "f=3,p=Rot,q=#Kaessbohrer Tankauflieger SHELL (v8)|#New-Bug-rot_SM1|#Auflieger_Hasseroeder_HB3,w=4,"
DS_20 = "f=3,p=Rot,q=#ADAC_PKW_Abschlepper;002|#Acros_Schweiger_Pritsche_HB3;018|#VW T6 Taxi DL1;001,w=1,"
DS_21 = "f=6,p=Rot,q=#Taxi_Limousine_02|#ADAC_PKW_Abschlepper;003|#Feuerwehr_DLK_HB3_V8|#Taxi-Van|#EF_Polizei_VWT4_02_ST_NP1;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001,w=2,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
