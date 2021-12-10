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
DS_1 = "f=1,p=Rot,q=#Solaris Urbino 12 gelb (v8),w=1,"
DS_2 = "f=4,p=Rot,q=#New-Bug-rot_SM1|#Taxi-Van|#Mittelklasse_PKW_lindgruen_NP1|#Reisebus Flixbus2_XXX1;001,w=2,"
DS_3 = "f=0,p=Rot,q=,w=1,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=3,p=Gruen,q=#Ford Galaxy ADAC|#Limousine_11|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser,w=0,"
DS_6 = "f=6,p=Gruen,q=#Mittelklasse_PKW_rot_NP1|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Kaessbohrer Tankauflieger AGIP (v8)|#Mannschaftsbus Dynamo Dresden_MSC1|#Audi A7 Schwarz|#Crafter_SW301_Kasten_AE1_AVIS,w=0,"
DS_7 = "f=5,p=Rot,q=#Citaro_01b_LE-Ue_UK2_v7|#VWT6r 02 DL1|#Taxi-Van;001|#Delta Julia blau|#Citaro_01c_LE-Ue_UK2_v7;001,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=5,"
DS_11 = "f=0,p=Rot,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=10,"
DS_13 = "f=0,p=Rot,q=,w=10,"
DS_14 = "f=3,p=Rot,q=#Feuerwehr_MLF_HB3_V8|#Acros_Schweiger_HB3|#Limousine_02_NP1,w=1,"
DS_15 = "f=1,p=Rot,q=#Linie 10 - Zug 01,w=0,"
DS_16 = "f=1,p=Gruen,q=#Linie 10 - Zug 2,w=0,"
DS_17 = "f=6,p=Rot,q=#Mittelklasse_PKW_blau_NP1|#Ford_Transit 1 Pick-up blau 2m (v8);001|#TSF_FS_KW1|#KL-Gartenbau-Pritsche-kurz_SM1|#Auflieger_Hasseroeder_HB3|#Limousine_12,w=1,"
DS_18 = "f=0,p=Rot,q=,w=0,"
DS_19 = "f=2,p=Gruen,q=#Reisebus Flixbus2_XXX1;003|#Taxi_Limousine_02,w=0,"
DS_20 = "f=3,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;004|#Kaessbohrer Tankauflieger SHELL (v8)|#Acros_Schweiger_Pritsche_HB3;020,w=1,"
DS_21 = "f=5,p=Rot,q=#ADAC_Actros|#BMW 318 Touring Polizei blau SM1|#KL-Strassendienst-Pritsche-kurz_SM1|#VW T6 Taxi DL1;001|#Auflieger_BASF_HB3,w=1,"
DS_22 = "reqInfo=false,seqInfo=true,sigInfo=false,"
