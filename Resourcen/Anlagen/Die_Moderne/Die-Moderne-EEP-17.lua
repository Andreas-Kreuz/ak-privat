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
DS_1 = "f=6,p=Gruen,q=#Slavia Roomba rot|#Acros_Schweiger_HB3|#MAN Citybus FL gelb CR1|#ADAC_Actros|#Kaessbohrer Tankauflieger BP (v8)|#Auflieger_Mobil_HB3,w=0,"
DS_2 = "f=6,p=Rot,q=#Crafter_SW301_Kasten_AE1_AVIS|#Slavia Roomba blau|#Limousine_01_NP1;003|#VW T6 Taxi DL1;001|#Ford Galaxy ADAC|#Limousine_11,w=1,"
DS_3 = "f=0,p=Rot,q=,w=0,"
DS_4 = "f=0,p=Rot,q=,w=1,"
DS_5 = "f=5,p=Rot,q=#Limousine_12|#Slavia Roomba ocker|#Limousine_01_NP1;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Maluch 126 p dunkelgrün,w=3,"
DS_6 = "f=0,p=Rot,q=,w=2,"
DS_7 = "f=0,p=Rot,q=,w=0,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=9,"
DS_11 = "f=0,p=Rot,q=,w=1,"
DS_12 = "f=0,p=Rot,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=3,p=Gruen,q=#Acros_Schweiger_Pritsche_HB3;020|#Limousine_01_NP1;002|#MAN Citybus gelb CR1,w=0,"
DS_15 = "f=0,p=Gruen,q=,w=0,"
DS_16 = "f=0,p=Gruen,q=,w=0,"
DS_17 = "f=10,p=Fussg,q=#Auflieger_AVIA_HB3|#VWT6r 09 DL1|#Slavia Roomba grün|#Kaessbohrer Tankauflieger AGIP (v8)|#Taxi_Limousine_01|#Mittelklasse_PKW_rot_NP1|#VW T6 Taxi DL1;008|#Taxi_Limousine_02|#Audi A7 WeiB|#Opal Vitaro MEDIA MARKT;004,w=4,"
DS_18 = "f=0,p=Fussg,q=,w=3,"
DS_19 = "f=4,p=Rot,q=#Limousine_02_NP1|#Limousine_01_NP1;004|#Mittelklasse_PKW_lindgruen_NP1|#Acros_Schweiger_Pritsche_HB3;018,w=3,"
DS_20 = "f=3,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003|#ADAC_LKW_Abschlepper|#KL-Gartenbau-Pritsche-kurz_SM1,w=0,"
DS_21 = "f=4,p=Rot,q=#Maluch 126 p Karminrot|#Auflieger_BASF_HB3|#Reisebus Flixbus2_XXX1;003|#Auflieger_Schweiger_HB3,w=4,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
