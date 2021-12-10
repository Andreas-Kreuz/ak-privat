clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
print("Lade EEP-13-die-Moderne-EEP-17-main ...")
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
DS_1 = "f=0,p=Gruen,q=,w=0,"
DS_2 = "f=8,p=Rot,q=#Auflieger_AVIA_HB3|#Maluch 126 p Karminrot|#EF_Polizei_VWT4_02_ST_NP1;005|#Crafter_SW301_Kasten_AE1_Krankenwagen-DRK|#Ford_Transit 1 Pick-up Plane gelb offset 2m (v8)|#VWT6r DHL DL1|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Limousine_01_NP1;004,w=10,"
DS_3 = "f=0,p=Gruen,q=,w=0,"
DS_4 = "f=0,p=Rot,q=,w=2,"
DS_5 = "f=6,p=Rot,q=#Taxi-Van|#ADAC_LKW_Abschlepper|#Mittelklasse_PKW_lindgruen_NP1|#VWT6r 02 DL1|#EF_Polizei_VWT4_02_ST_NP1;001|#Acros_Schweiger_Pritsche_HB3;020,w=2,"
DS_6 = "f=7,p=Rot,q=#VWT6r 09 DL1|#Acros_Schweiger_HB3|#VW T6 Taxi DL1|#Mittelklasse_PKW_Taxi_NP1|#Limousine_11|#Auflieger_BASF_HB3|#ADAC_PKW_Abschlepper;002,w=1,"
DS_7 = "f=2,p=Gruen,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Ford Galaxy ADAC,w=0,"
DS_8 = "f=0,p=Gruen,q=,w=0,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Fussg,q=,w=6,"
DS_11 = "f=0,p=Rot,q=,w=8,"
DS_12 = "f=0,p=Fussg,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=0,p=Gruen,q=,w=0,"
DS_15 = "f=0,p=Rot,q=,w=3,"
DS_16 = "f=0,p=Rot,q=,w=3,"
DS_17 = "f=4,p=Gruen,q=#BMW 318 Touring Polizei blau SM1|#Kaessbohrer Tankauflieger BP (v8)|#Slavia Roomba ocker|#Solaris Urbino 12 gelb (v8),w=0,"
DS_18 = "f=0,p=Rot,q=,w=3,"
DS_19 = "f=5,p=Rot,q=#Taxi_Limousine_02|#Kaessbohrer Tankauflieger SHELL (v8)|#Limousine_01_NP1;001|#KL-Strassendienst-Pritsche-kurz_SM1|#ADAC_PKW_Abschlepper;003,w=2,"
DS_20 = "f=0,p=Gruen,q=,w=0,"
DS_21 = "f=1,p=Gruen,q=#Opal Vitaro MEDIA MARKT;004,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
