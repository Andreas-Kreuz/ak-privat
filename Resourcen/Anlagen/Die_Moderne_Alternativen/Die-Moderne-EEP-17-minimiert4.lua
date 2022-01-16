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
DS_1 = "f=1,p=Gruen,q=#KL-Strassendienst-Pritsche-kurz_SM1,w=0,"
DS_2 = "f=2,p=Rot,q=#Opal Vitaro MEDIA MARKT;004|#EF_Polizei_VWT4_02_ST_NP1;002,w=3,"
DS_3 = "f=0,p=Rot,q=,w=0,"
DS_4 = "f=0,p=Rot,q=,w=2,"
DS_5 = "f=1,p=Rot,q=#Kaessbohrer Tankauflieger BP (v8),w=2,"
DS_6 = "f=2,p=Rot,q=#Slavia Roomba grün|#Mittelklasse_PKW_rot_NP1,w=2,"
DS_7 = "f=0,p=Rot,q=,w=0,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=7,"
DS_11 = "f=0,p=Rot,q=,w=3,"
DS_12 = "f=0,p=Rot,q=,w=4,"
DS_13 = "f=0,p=Rot,q=,w=4,"
DS_14 = "f=6,p=Rot,q=#Maluch 126 p Karminrot|#ADAC_PKW_Abschlepper|#EF_Polizei_VWT4_02_ST_NP1|#Audi A7 WeiB|#Acros_Schweiger_Pritsche_HB3;006|#Slavia Roomba blau,w=1,"
DS_15 = "f=1,p=Rot,q=#Linie 10 - Zug 01,w=2,"
DS_16 = "f=0,p=Gruen,q=,w=0,"
DS_17 = "f=1,p=Fussg,q=#Taxi_Limousine_01,w=1,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=1,p=Rot,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK,w=2,"
DS_20 = "f=5,p=Rot,q=#Auflieger_Schweiger_HB3|#Slavia Roomba rot|#Maluch 126 p dunkelgrün|#Auflieger_Mobil_HB3|#Limousine_01_NP1;006,w=1,"
DS_21 = "f=2,p=Rot,q=#Acros_Schweiger_HB3|#ADAC_PKW_Abschlepper;003,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
