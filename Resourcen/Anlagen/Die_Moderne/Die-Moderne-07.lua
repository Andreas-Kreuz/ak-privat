clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
print("Lade EEP-13-die-Moderne-07-main ...")
require("ak.anlagen.die-moderne.Die-Moderne-07-main")

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
DS_1 = "f=4,p=Rot,q=#Taxi-Van|#ADAC_PKW_Abschlepper;002|#Maluch 126 p Karminrot|#Auflieger_BASF_HB3,w=1,"
DS_2 = "f=8,p=Rot,q=#Kaessbohrer Tankauflieger SHELL (v8)|#Acros_Schweiger_Pritsche_HB3;006|#Limousine_01_NP1;001|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Auflieger_Schweiger_HB3|#Reisebus Flixbus2_XXX1;003|#EF_Polizei_VWT4_02_ST_NP1;004|#Mittelklasse_PKW_rot_NP1,w=3,"
DS_3 = "f=0,p=Rot,q=,w=6,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=5,p=Rot,q=#Taxi_Limousine_02|#KL-Gartenbau-Pritsche-kurz_SM1|#Slavia Roomba grün|#ADAC_PKW_Abschlepper|#ADAC_LKW_Abschlepper,w=2,"
DS_6 = "f=4,p=Gruen,q=#Limousine_12|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#ADAC_Actros|#Opal Vitaro MEDIA MARKT;004,w=1,"
DS_7 = "f=5,p=Gruen,q=#Citaro_01c_LE-Ue_UK2_v7;001|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Acros_Schweiger_Pritsche_HB3;018|#Feuerwehr_HFL10_HB3_V8|#Taxi-Van;001,w=1,"
DS_8 = "f=1,p=Gruen,q=#6MGT Wagen 1 Drewag,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=0,"
DS_11 = "f=0,p=Gruen,q=,w=3,"
DS_12 = "f=0,p=Rot,q=,w=8,"
DS_13 = "f=0,p=Rot,q=,w=8,"
DS_14 = "f=2,p=Rot,q=#Kaessbohrer Tankauflieger BP (v8)|#Kaessbohrer Tankauflieger AGIP (v8),w=0,"
DS_15 = "f=0,p=Gruen,q=,w=5,"
DS_16 = "f=0,p=Gruen,q=,w=1,"
DS_17 = "f=1,p=Rot,q=#Limousine_01_NP1;006,w=0,"
DS_18 = "f=0,p=Gruen,q=,w=2,"
DS_19 = "f=4,p=Rot,q=#Reisebus Flixbus2_XXX1;001|#EF_Polizei_VWT4_02_ST_NP1;001|#Mittelklasse_PKW_lindgruen_NP1|#Citaro_01b_LE-Ue_UK2_v7,w=2,"
DS_20 = "f=3,p=Rot,q=#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Limousine_01_NP1;003|#Slavia Roomba ocker,w=0,"
DS_21 = "f=1,p=Rot,q=#New-Bug-rot_SM1,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
