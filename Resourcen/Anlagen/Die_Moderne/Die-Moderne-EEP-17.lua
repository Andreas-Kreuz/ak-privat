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
DS_1 = "f=3,p=Rot,q=#MAN Citybus gelb CR1|#EF_Polizei_VWT4_02_ST_NP1;003|#MAN Citybus GL FL gelb CR1,w=1,"
DS_2 = "f=4,p=Rot,q=#Slavia Roomba rot|#Limousine_01_NP1;001|#VWT6r 09 DL1|#Opal Vitaro MEDIA MARKT;004,w=2,"
DS_3 = "f=1,p=Rot,q=#Linie 10 - Zug 2,w=8,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=4,p=Rot,q=#Limousine_12|#BMW 318 Touring Polizei blau SM1|#Audi A7 Schwarz|#EF_Polizei_VWT4_02_ST_NP1;001,w=0,"
DS_6 = "f=0,p=Gruen,q=,w=0,"
DS_7 = "f=0,p=Rot,q=,w=1,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=6,"
DS_11 = "f=0,p=Rot,q=,w=2,"
DS_12 = "f=0,p=Rot,q=,w=7,"
DS_13 = "f=0,p=Rot,q=,w=7,"
DS_14 = "f=2,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;004|#VW T6 Taxi DL1;008,w=1,"
DS_15 = "f=0,p=Gruen,q=,w=0,"
DS_16 = "f=0,p=Gruen,q=,w=0,"
DS_17 = "f=8,p=Rot,q=#MAN Citybus FL gelb CR1|#Reisebus Flixbus2_XXX1;001|#Kaessbohrer Tankauflieger SHELL (v8)|#Crafter_SW301_Kasten_AE1_Krankenwagen-Malteser|#Kaessbohrer Tankauflieger BP (v8)|#Delta Julia blau|#Limousine_01_NP1;004|#Limousine_01_NP1;002,w=3,"
DS_18 = "f=0,p=Rot,q=,w=0,"
DS_19 = "f=4,p=Rot,q=#Mannschaftsbus Dynamo Dresden_MSC1|#Maluch 126 p Karminrot|#Auflieger_BASF_HB3|#Audi A7 WeiB,w=0,"
DS_20 = "f=2,p=Rot,q=#Auflieger_AVIA_HB3|#Limousine_01_NP1;006,w=1,"
DS_21 = "f=5,p=Rot,q=#ADAC_PKW_Abschlepper;002|#Slavia Roomba ocker|#EF_Polizei_VWT4_02_ST_NP1|#Acros_Schweiger_Pritsche_HB3;006|#Mittelklasse_PKW_lindgruen_NP1,w=3,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=true,"
