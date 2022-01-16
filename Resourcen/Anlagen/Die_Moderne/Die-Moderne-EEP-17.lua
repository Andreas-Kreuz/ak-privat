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
DS_1 = "f=0,p=Rot,q=,w=1,"
DS_2 = "f=9,p=Gruen,q=#EF_Polizei_VWT4_02_ST_NP1;003|#Feuerwehr_HFL10_HB3_V8|#Opal Vitaro MEDIA MARKT;004|#New-Bug-rot_SM1|#Acros_BASF_HB3|#Limousine_01_NP1;001|#ADAC_LKW_Abschlepper|#Slavia Roomba grün|#Slavia Roomba ocker,w=0,"
DS_3 = "f=0,p=Rot,q=,w=2,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=3,p=Rot,q=#MAN Citybus 1 GLA gelb CR1|#Maluch 126 p dunkelgrün|#Mannschaftsbus Dynamo Dresden_MSC1,w=3,"
DS_6 = "f=5,p=Rot,q=#KL-Gartenbau-Pritsche-kurz_SM1|#Reisebus Flixbus2_XXX1;003|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Lastwagen Hornbach 01|#Acros_Schweiger_Pritsche_HB3;018,w=1,"
DS_7 = "f=4,p=Rot,q=#Auflieger_Mobil_HB3|#EF_Polizei_VWT4_02_ST_NP1|#Auflieger_Schweiger_HB3|#Taxi-Van;001,w=1,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=4,"
DS_11 = "f=0,p=Rot,q=,w=0,"
DS_12 = "f=0,p=Fussg,q=,w=3,"
DS_13 = "f=0,p=Rot,q=,w=3,"
DS_14 = "f=3,p=Gruen,q=#Mittelklasse_PKW_blau_NP1|#EF_Polizei_VWT4_02_ST_NP1;001|#MAN Citybus FL gelb CR1,w=0,"
DS_15 = "f=0,p=Rot,q=,w=7,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=7,"
DS_17 = "f=4,p=Gruen,q=#Feuerwehr_DLK_HB3_V8|#Delta Julia blau|#Auflieger_BASF_HB3|#Mittelklasse_PKW_lindgruen_NP1,w=0,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=1,p=Rot,q=#MAN Citybus gelb CR1,w=3,"
DS_20 = "f=1,p=Gruen,q=#Acros_Schweiger_HB3,w=0,"
DS_21 = "f=1,p=Gruen,q=#Auflieger_Hasseroeder_HB3,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
