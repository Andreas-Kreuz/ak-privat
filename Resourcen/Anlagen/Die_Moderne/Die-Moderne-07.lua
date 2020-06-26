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
DS_1 = "f=3,p=Rot,q=#Limousine_02_NP1|#Auflieger_Hasseroeder_HB3|#EF_Polizei_VWT4_02_ST_NP1;003,w=1,"
DS_2 = "f=7,p=Rot,q=#Maluch 126 p Karminrot|#Ford Galaxy ADAC|#EF_Polizei_VWT4_02_ST_NP1;001|#Ford_Transit 1 Pick-up blau 2m (v8);001|#Feuerwehr_HFL10_HB3_V8|#Taxi_Limousine_02|#Acros_Schweiger_Pritsche_HB3;006,w=2,"
DS_3 = "f=0,p=Rot,q=,w=5,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Auflieger_Schweiger_HB3|#Opal Vitaro MEDIA MARKT;004|#Opal Vitaro MEDIA MARKT;003|#Acros_Schweiger_Pritsche_HB3;018,w=3,"
DS_6 = "f=5,p=Rot,q=#ADAC_PKW_Abschlepper;002|#Auflieger_Mobil_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Mittelklasse_PKW_lindgruen_NP1|#Limousine_01_NP1;001,w=1,"
DS_7 = "f=5,p=Rot,q=#Citaro_01c_LE-Ue_UK2_v7;001|#EF_Polizei_VWT4_02_ST_NP1;004|#Slavia Roomba rot|#Slavia Roomba ocker|#Kaessbohrer Tankauflieger AGIP (v8),w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=0,"
DS_11 = "f=0,p=Rot,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=2,p=Rot,q=#ADAC_PKW_Abschlepper|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK,w=1,"
DS_15 = "f=0,p=Rot,q=,w=3,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag,w=0,"
DS_17 = "f=6,p=Fussg,q=#ADAC_LKW_Abschlepper|#Taxi-Van|#Reisebus Flixbus2_XXX1;003|#KL-Strassendienst-Pritsche-kurz_SM1|#Auflieger_BASF_HB3|#EF_Polizei_VWT4_02_ST_NP1;002,w=1,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=4,p=Rot,q=#ADAC_PKW_Abschlepper;003|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Feuerwehr_MLF_HB3_V8|#EF_Polizei_VWT4_02_ST_NP1,w=3,"
DS_20 = "f=3,p=Rot,q=#Taxi-Van;001|#Taxi_Limousine_01|#Limousine_01_NP1;004,w=1,"
DS_21 = "f=3,p=Rot,q=#Feuerwehr_DLK_HB3_V8|#Slavia Roomba blau|#Acros_Schweiger_HB3,w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
