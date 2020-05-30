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
Crossing.zeigeSignalIdsAllerSignale = false
Crossing.zeigeAnforderungenAlsInfo = false
Crossing.zeigeSchaltungAlsInfo = false

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
Crossing.zaehlerZuruecksetzen()


[EEPLuaData]
DS_1 = "f=7,p=Rot,q=#Crafter_SW301_Kasten_AE1_AVIS|#TSF_FS_KW1|#ADAC_PKW_Abschlepper|#Taxi_Limousine_01|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Reisebus Flixbus2_XXX1;001|#Maluch 126 p dunkelgrün,w=2,"
DS_2 = "f=7,p=Rot,q=#Acros_Schweiger_HB3|#Limousine_12|#Opal Vitaro MEDIA MARKT;003|#Auflieger_AVIA_HB3|#Slavia Roomba rot|#Ford Galaxy ADAC|#ADAC_PKW_Abschlepper;002,w=3,"
DS_3 = "f=0,p=Rot,q=,w=2,"
DS_4 = "f=0,p=Gruen,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Mittelklasse_PKW_lindgruen_NP1|#Acros_Schweiger_Pritsche_HB3;018|#Maluch 126 p Karminrot|#Citaro_01c_LE-Ue_UK2_v7;001,w=1,"
DS_6 = "f=5,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;005|#Delta Julia blau|#Auflieger_Schweiger_HB3|#ADAC_Actros|#ADAC_PKW_Abschlepper;003,w=1,"
DS_7 = "f=5,p=Rot,q=#Slavia Roomba blau|#Mittelklasse_PKW_blau_NP1|#Kaessbohrer Tankauflieger BP (v8)|#Auflieger_Mobil_HB3|#Acros_Schweiger_Pritsche_HB3;006,w=2,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Gelb,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=0,"
DS_11 = "f=0,p=Rot,q=,w=3,"
DS_12 = "f=0,p=Rot,q=,w=4,"
DS_13 = "f=0,p=Rot,q=,w=4,"
DS_14 = "f=0,p=Gruen,q=,w=0,"
DS_15 = "f=0,p=Rot,q=,w=2,"
DS_16 = "f=0,p=Rot,q=,w=2,"
DS_17 = "f=3,p=Gruen,q=#EF_Polizei_VWT4_02_ST_NP1;002|#Auflieger_BASF_HB3|#Taxi-Van;001,w=0,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=4,p=Rot,q=#Feuerwehr_DLK_HB3_V8|#Slavia Roomba grün|#Acros_BASF_HB3|#KL-Strassendienst-Pritsche-kurz_SM1,w=1,"
DS_20 = "f=0,p=Gruen,q=,w=0,"
DS_21 = "f=2,p=Gruen,q=#Reisebus Flixbus2_XXX1;003|#Acros_Schweiger_Pritsche_HB3;020,w=0,"
