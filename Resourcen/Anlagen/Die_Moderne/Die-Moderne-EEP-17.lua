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
DS_1 = "f=10,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;004|#VW T6 Taxi DL1;001|#Ford Galaxy ADAC|#Limousine_01_NP1;002|#EF_Polizei_VWT4_02_ST_NP1|#Citaro_01b_LE-Ue_UK2_v7|#Acros_BASF_HB3|#Acros_Schweiger_HB3|#EF_Polizei_VWT4_02_ST_NP1;002|#Kaessbohrer Tankauflieger BP (v8),w=2,"
DS_2 = "f=6,p=Rot,q=#EF_Polizei_VWT4_02_ST_NP1;003|#Opal Vitaro MEDIA MARKT;003|#Opal Vitaro MEDIA MARKT;004|#Acros_Schweiger_Pritsche_HB3;018|#Limousine_11|#Limousine_01_NP1;006,w=1,"
DS_3 = "f=0,p=Rot,q=,w=3,"
DS_4 = "f=0,p=Rot,q=,w=0,"
DS_5 = "f=2,p=Gruen,q=#Auflieger_BASF_HB3|#Auflieger_Schweiger_HB3,w=0,"
DS_6 = "f=1,p=Gruen,q=#Feuerwehr_DLK_HB3_V8,w=0,"
DS_7 = "f=3,p=Rot,q=#Audi A7 WeiB|#Taxi_Limousine_02|#Kaessbohrer Tankauflieger SHELL (v8),w=2,"
DS_8 = "f=0,p=Rot,q=,w=1,"
DS_9 = "f=0,p=Rot,q=,w=0,"
DS_10 = "f=0,p=Rot,q=,w=15,"
DS_11 = "f=0,p=Rot,q=,w=1,"
DS_12 = "f=0,p=Rot,q=,w=5,"
DS_13 = "f=0,p=Rot,q=,w=5,"
DS_14 = "f=2,p=Rot,q=#Kaessbohrer Tankauflieger AGIP (v8)|#Auflieger_Hasseroeder_HB3,w=1,"
DS_15 = "f=1,p=Rot,q=#6MGT Wagen 1 DVBAG;001,w=1,"
DS_16 = "f=0,p=Rot,q=,w=1,"
DS_17 = "f=6,p=Gruen,q=#Taxi-Van|#ADAC_LKW_Abschlepper|#Mittelklasse_PKW_lindgruen_NP1|#EF_Polizei_VWT4_02_ST_NP1;001|#Acros_Schweiger_Pritsche_HB3;020|#Mittelklasse_PKW_blau_NP1,w=0,"
DS_18 = "f=0,p=Rot,q=,w=0,"
DS_19 = "f=3,p=Gruen,q=#ADAC_PKW_Abschlepper;002|#BMW 318 Touring Polizei blau SM1|#Auflieger_AVIA_HB3,w=0,"
DS_20 = "f=4,p=Rot,q=#ADAC_Actros|#Citaro_01c_LE-Ue_UK2_v7;001|#Limousine_02_NP1|#Lastwagen Hornbach 01,w=1,"
DS_21 = "f=3,p=Gruen,q=#ADAC_PKW_Abschlepper;003|#KL-Gartenbau-Pritsche-kurz_SM1|#Feuerwehr_MLF_HB3_V8,w=0,"
DS_22 = "reqInfo=false,seqInfo=false,sigInfo=false,"
DS_23 = "depInfo=false,"
