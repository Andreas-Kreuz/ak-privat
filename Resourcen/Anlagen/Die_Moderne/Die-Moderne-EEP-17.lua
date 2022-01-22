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
DS_1 = "f=6,p=Rot,q=#Limousine_12|#KL-Gartenbau-Pritsche-kurz_SM1|#Kaessbohrer Tankauflieger BP (v8)|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Limousine_01_NP1;006|#Maluch 126 p dunkelgrün,w=1,"
DS_2 = "f=4,p=Rot,q=#Delta Julia blau|#Acros_Schweiger_HB3|#Acros_BASF_HB3|#Mittelklasse_PKW_rot_NP1,w=2,"
DS_3 = "f=0,p=Rot,q=,w=6,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Gruen,q=#Mittelklasse_PKW_blau_NP1|#VWT6r 09 DL1|#EF_Polizei_VWT4_02_ST_NP1;001|#Taxi_Limousine_02,w=0,"
DS_6 = "f=2,p=Gruen,q=#Acros_Schweiger_Pritsche_HB3;020|#Ford Galaxy ADAC,w=0,"
DS_7 = "f=3,p=Rot,q=#VW T6 Taxi DL1|#Slavia Roomba blau|#Acros_Schweiger_Pritsche_HB3;018,w=1,"
DS_8 = "f=1,p=Rot,q=#GT4 Serie 2 (2) Wagen B,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=13,"
DS_11 = "f=0,p=Rot,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=4,"
DS_13 = "f=0,p=Rot,q=,w=4,"
DS_14 = "f=3,p=Gruen,q=#Opal Vitaro MEDIA MARKT;004|#MAN Citybus 1 GLA gelb CR1;001|#Limousine_02_NP1,w=0,"
DS_15 = "f=0,p=Rot,q=,w=7,"
DS_16 = "f=0,p=Rot,q=,w=1,"
DS_17 = "f=5,p=Gruen,q=#VWT6r 02 DL1|#Opal Vitaro MEDIA MARKT;003|#KL-Strassendienst-Pritsche-kurz_SM1|#Reisebus Flixbus2_XXX1;001|#Limousine_11,w=0,"
DS_18 = "f=0,p=Rot,q=,w=7,"
DS_19 = "f=1,p=Gruen,q=#Maluch 126 p Karminrot,w=0,"
DS_20 = "f=3,p=Gruen,q=#Mannschaftsbus Dynamo Dresden_MSC1|#EF_Polizei_VWT4_02_ST_NP1;003|#Auflieger_BASF_HB3,w=0,"
DS_21 = "f=1,p=Gruen,q=#Auflieger_Mobil_HB3,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
