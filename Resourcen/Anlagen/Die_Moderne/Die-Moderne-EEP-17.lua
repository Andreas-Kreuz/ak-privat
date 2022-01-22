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
DS_1 = "f=3,p=Gruen,q=#Limousine_01_NP1;001|#EF_Polizei_VWT4_02_ST_NP1|#VWT6r 09 DL1,w=0,"
DS_2 = "f=6,p=Rot,q=#Acros_Schweiger_Pritsche_HB3;006|#Mittelklasse_PKW_blau_NP1|#Slavia Roomba grün|#Mittelklasse_PKW_lindgruen_NP1|#Lastwagen Hornbach 01|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser,w=3,"
DS_3 = "f=2,p=Rot,q=#Linie 10 - Zug 2|#Linie 10 - Zug 01,w=5,"
DS_4 = "f=0,p=Rot,q=,w=1,"
DS_5 = "f=3,p=Rot,q=#Limousine_02_NP1|#KL-Gartenbau-Pritsche-kurz_SM1|#Limousine_01_NP1;003,w=1,"
DS_6 = "f=3,p=Gruen,q=#Slavia Roomba ocker|#Auflieger_BASF_HB3|#MAN Citybus FL gelb CR1,w=0,"
DS_7 = "f=3,p=Gruen,q=#Auflieger_Schweiger_HB3|#VWT6r 02 DL1|#Limousine_11,w=0,"
DS_8 = "f=0,p=Rot,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=9,"
DS_11 = "f=0,p=Rot,q=,w=3,"
DS_12 = "f=0,p=Rot,q=,w=0,"
DS_13 = "f=0,p=Rot,q=,w=0,"
DS_14 = "f=4,p=Rot,q=#MAN Citybus gelb CR1|#MAN Citybus 1 GLA gelb CR1;001|#Mittelklasse_PKW_Taxi_NP1|#Opal Vitaro MEDIA MARKT;004,w=1,"
DS_15 = "f=0,p=Rot,q=,w=6,"
DS_16 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=6,"
DS_17 = "f=7,p=Fussg,q=#Acros_BASF_HB3|#Slavia Roomba rot|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#Crafter_SW301_Kasten_AE1_AVIS|#Auflieger_AVIA_HB3|#Ford Galaxy ADAC|#ADAC_Actros,w=1,"
DS_18 = "f=0,p=Rot,q=,w=2,"
DS_19 = "f=2,p=Rot,q=#VW T6 Taxi DL1|#Slavia Roomba blau,w=1,"
DS_20 = "f=4,p=Rot,q=#Maluch 126 p dunkelgrün|#Acros_Schweiger_HB3|#Acros_Schweiger_Pritsche_HB3;020|#Audi A7 Schwarz,w=1,"
DS_21 = "f=3,p=Rot,q=#Limousine_12|#EF_Polizei_VWT4_02_ST_NP1;004|#Kaessbohrer Tankauflieger SHELL (v8),w=1,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
