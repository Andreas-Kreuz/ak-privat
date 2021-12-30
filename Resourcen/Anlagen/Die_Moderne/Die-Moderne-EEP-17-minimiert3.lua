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
DS_1 = "f=4,p=Rot,q=#Taxi_Limousine_01|#Acros_Schweiger_HB3|#Maluch 126 p Karminrot|#Limousine_01_NP1;004,w=1,"
DS_2 = "f=3,p=Rot,q=#Auflieger_AVIA_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Kaessbohrer Tankauflieger BP (v8),w=3,"
DS_3 = "f=0,p=Rot,q=,w=1,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Limousine_01_NP1;003|#VW T6 Taxi DL1|#Limousine_02_NP1|#Delta Julia blau,w=2,"
DS_6 = "f=3,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1|#Auflieger_Schweiger_HB3|#Slavia Roomba ocker,w=2,"
DS_7 = "f=1,p=Rot,q=#Feuerwehr_DLK_HB3_V8,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=0,"
DS_11 = "f=0,p=Rot,q=,w=3,"
DS_12 = "f=0,p=Rot,q=,w=8,"
DS_13 = "f=0,p=Rot,q=,w=8,"
DS_14 = "f=2,p=Gelb,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Limousine_12,w=0,"
DS_15 = "f=0,p=Rot,q=,w=0,"
DS_16 = "f=0,p=Rot,q=,w=0,"
DS_17 = "f=10,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;005|#VWT6r DHL DL1|#Acros_BASF_HB3|#EF_Polizei_VWT4_02_ST_NP1;002|#Slavia Roomba rot|#Audi A7 WeiB|#KL-Strassendienst-Pritsche-kurz_SM1|#Maluch 126 p dunkelgrün|#Acros_Schweiger_Pritsche_HB3;006|#Solaris Urbino 12 gelb (v8),w=2,"
DS_18 = "f=0,p=Rot,q=,w=1,"
DS_19 = "f=4,p=Rot,q=#Auflieger_Hasseroeder_HB3|#VWT6r 02 DL1|#EF_Polizei_VWT4_02_ST_NP1;004|#Acros_Schweiger_Pritsche_HB3;020,w=2,"
DS_20 = "f=0,p=Gruen,q=,w=0,"
DS_21 = "f=5,p=Rot,q=#Taxi-Van|#EF_Polizei_VWT4_02_ST_NP1;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#Reisebus Flixbus2_XXX1;003|#Auflieger_Mobil_HB3,w=2,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
