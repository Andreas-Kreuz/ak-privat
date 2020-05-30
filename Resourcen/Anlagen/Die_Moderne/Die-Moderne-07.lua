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
DS_1 = "f=7,p=Rot,q=#Kaessbohrer Tankauflieger AGIP (v8)|#TSF_FS_KW1|#Mittelklasse_PKW_lindgruen_NP1|#Opal Vitaro MEDIA MARKT;003|#Maluch 126 p dunkelgrün|#Slavia Roomba blau|#Delta Julia blau,w=3,"
DS_2 = "f=2,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1|#Reisebus Flixbus2_XXX1;003,w=1,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=2,"
DS_5 = "f=3,p=Rot,q=#Mittelklasse_PKW_Taxi_NP1|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8);001|#ADAC_PKW_Abschlepper,w=2,"
DS_6 = "f=6,p=Gruen,q=#Limousine_01_NP1;004|#Slavia Roomba rot|#Maluch 126 p Karminrot|#Auflieger_Hasseroeder_HB3|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Acros_Schweiger_Pritsche_HB3;006,w=0,"
DS_7 = "f=5,p=Gruen,q=#Limousine_02_NP1|#Mannschaftsbus Dynamo Dresden_MSC1|#Slavia Roomba grün|#Auflieger_AVIA_HB3|#Citaro_01b_LE-Ue_UK2_v7,w=0,"
DS_8 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag;001,w=0,"
DS_9 = "f=0,p=Gruen,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=21,"
DS_11 = "f=0,p=Gruen,q=,w=0,"
DS_12 = "f=0,p=Rot,q=,w=2,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=3,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003|#Limousine_01_NP1;003|#Solaris Urbino 12 gelb (v8),w=1,"
DS_15 = "f=0,p=Rot,q=,w=0,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 Drewag,w=0,"
DS_17 = "f=4,p=Rot,q=#Lastwagen Hornbach 01|#Auflieger_BASF_HB3|#Taxi-Van|#New-Bug-rot_SM1,w=1,"
DS_18 = "f=0,p=Rot,q=,w=0,"
DS_19 = "f=4,p=Rot,q=#KL-Gartenbau-Pritsche-kurz_SM1|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#ADAC_PKW_Abschlepper;002|#Kaessbohrer Tankauflieger BP (v8),w=2,"
DS_20 = "f=1,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;020,w=1,"
DS_21 = "f=3,p=Rot,q=#Acros_Schweiger_HB3|#Kaessbohrer Tankauflieger SHELL (v8)|#Taxi_Limousine_02,w=1,"
