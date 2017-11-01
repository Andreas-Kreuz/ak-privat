require 'ak.schiene.AkSchiene'

-- AkAusgabe.outputPath = "C:/Spiele/EEP14/LUA/"

--require 'PrintToFile_BH2' { file = AkAusgabe.outputPath .. "output.txt" }

-- SignalStellung
S = {}
S.Hp0 = 1 -- Halt
S.Hp1 = 2 -- Fahrt mit Hoechstgeschwindigkeit
S.Hp2 = 2 -- Fahrt mit 40 km/h
S.Halt = 2  -- Haltetafel Halt
S.Fahrt = 1 -- Haltetafel Fahrt

local trainDirection = {}
trainDirection.WST = "West"
trainDirection.OST = "Ost"

eepRoute = {}
--       +---------------------- -- Pers: Personen, Guet: Güter, Rang: Rangierverkehr
--       |    +----------------- -- Frn: Fernverkehr, Nah: Nahverkehr
--       |    |   +------------- -- Kurz: Kurzzug, Norm: Normal, Lang: Besonders langer Zug
--       |    |   |              ------------------------------------
eepRoute.Pers_Frn_Kurz = "Zug_P_F_K" -- Personenzug Fernverkehr Kurzzug
eepRoute.Pers_Nah_Kurz = "Zug_P_N_K" -- Personenzug Nahverkehr  Kurzzug
eepRoute.Pers_Frn_Norm = "Zug_P_F_N" -- Personenzug Fernverkehr Normal
eepRoute.Pers_Nah_Norm = "Zug_P_N_N" -- Personenzug Nahverkehr  Normal
eepRoute.Guet_Frn_Norm = "Zug_G_F_N" -- Güterzug    Fernverkehr Normal
eepRoute.Guet_Nah_Norm = "Zug_G_N_N" -- Güterzug    Nahverkehr  Normal

-- Blockdefinitionen Hauptstrecke
blockSbOst = AkBlock.new("Block Sb Ost", 100) -- Block 0 Osten Ri. Schattenbahnhof --> oestlich von Gruenberg
block1Gl1 = AkBlock.new("Block 1 Gl1", 101) --   Block 1 Richtung Westen --> oestlich von Gruenberg
block1Gl2 = AkBlock.new("Block 1 Gl2", 116) --   Block 1 Richtung Osten  --> oestlich von Gruenberg
block2Gl1 = AkBlock.new("Block 2 Gl1", 106) --   Block 2 Richtung Westen --> zwischen Gruenberg und Neustadt
block2Gl2 = AkBlock.new("Block 2 Gl2", 117) --   Block 2 Richtung Osten  --> zwischen Gruenberg und Neustadt
block3Gl1 = AkBlock.new("Block 3 Gl1", 114) --   Block 3 Richtung Westen --> 1. westlich von Neustadt
block3Gl2 = AkBlock.new("Block 3 Gl2", 118) --   Block 3 Richtung Osten  --> 1. westlich von Neustadt
blockSbWst = AkBlock.new("Block 4 Gl1", 115) --  Block 4 Richtung Schattenbahnhof --> 2. westlich von Neustadt
block4Gl2 = AkBlock.new("Block Sb West", 119) -- Block 4 Richtung Osten  --> 2. westlich von Neustadt

-- Blockdefinition Gruenberg
gruenbergGleis1 = AkBlock.new("GBG Gleis 1", 102)
gruenbergGleis2 = AkBlock.new("GBG Gleis 2", 103)
gruenbergGleis3 = AkBlock.new("GBG Gleis 3", 104)
gruenbergGleis4 = AkBlock.new("GBG Gleis 4", 105)

-- Blockdefinition Neustadt
neustadtGleis1 = AkBlock.new("NST Gleis 1", 107)
neustadtGleis2 = AkBlock.new("NST Gleis 2", 108)
neustadtGleis3 = AkBlock.new("NST Gleis 3", 109)
neustadtGleis4 = AkBlock.new("NST Gleis 4", 110)
neustadtGleis5 = AkBlock.new("NST Gleis 5", 111)
neustadtGleis6 = AkBlock.new("NST Gleis 6", 112)
neustadtGleis7 = AkBlock.new("NST Gleis 7", 113)

-- Bahnuebergaenge
local crossingGruenberg = AkCrossing.new(88, 89, 3, 1, 11)
local crossingNeustadt = AkCrossing.new(273, 280, 3, 1, 11)

-- Fahrstrassen Hauptstrecke Richtung Westen
local block1Gl1ToGruenbergGleis2 = AkRoute.new(1, trainDirection.WST, block1Gl1, gruenbergGleis2,
    { AkFsSignal.new(14, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(62, 4, 4), },
    { crossingGruenberg })
block1Gl1ToGruenbergGleis2:addShortTrainStopMarker(AkFsSignal.new(253, S.Fahrt, S.Halt), eepRoute.Pers_Nah_Kurz)
block1Gl1ToGruenbergGleis2:addShortTrainStopMarker(AkFsSignal.new(253, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Kurz)
block1Gl1ToGruenbergGleis2:addShortTrainStopMarker(AkFsSignal.new(118, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Norm)

local block1Gl1ToGruenbergGleis3 = AkRoute.new(2, trainDirection.WST, block1Gl1, gruenbergGleis3,
    { AkFsSignal.new(14, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(62, 3, 4), AkFsSwitch.new(9, 1, 1), AkFsSwitch.new(4, 1, 1), AkFsSwitch.new(10, 2, 1), },
    { crossingGruenberg })
block1Gl1ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(252, S.Fahrt, S.Halt), eepRoute.Pers_Nah_Kurz)
block1Gl1ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(252, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Kurz)
block1Gl1ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(254, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Norm)

local block1Gl1ToGruenbergGleis4 = AkRoute.new(3, trainDirection.WST, block1Gl1, gruenbergGleis4,
    { AkFsSignal.new(14, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(62, 3, 4), AkFsSwitch.new(9, 1, 1), AkFsSwitch.new(4, 1, 1), AkFsSwitch.new(10, 1, 1), AkFsSwitch.new(8, 1, 1), },
    { crossingGruenberg })
local gruenbergGleis2ToBlock2Gl1 = AkRoute.new(4, trainDirection.WST, gruenbergGleis2, block2Gl1,
    { AkFsSignal.new(42, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(65, 2, 2), })
local gruenbergGleis3ToBlock2Gl1 = AkRoute.new(5, trainDirection.WST, gruenbergGleis3, block2Gl1,
    { AkFsSignal.new(41, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(65, 2, 2), AkFsSwitch.new(63, 1, 2), })
local gruenbergGleis4ToBlock2Gl1 = AkRoute.new(6, trainDirection.WST, gruenbergGleis4, block2Gl1,
    { AkFsSignal.new(40, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(65, 2, 2), AkFsSwitch.new(63, 1, 2), AkFsSwitch.new(6, 3, 2) })
local block2Gl1ToNeustadtGleis2 = AkRoute.new(8, trainDirection.WST, block2Gl1, neustadtGleis2,
    { AkFsSignal.new(281, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(226, 2, 1), AkFsSwitch.new(224, 1, 1), },
    { crossingNeustadt })
local block2Gl1ToNeustadtGleis1 = AkRoute.new(7, trainDirection.WST, block2Gl1, neustadtGleis1,
    { AkFsSignal.new(281, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(226, 2, 1), AkFsSwitch.new(224, 2, 1), },
    { crossingNeustadt })
local block2Gl1ToNeustadtGleis4 = AkRoute.new(9, trainDirection.WST, block2Gl1, neustadtGleis4,
    { AkFsSignal.new(281, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(226, 1, 1), AkFsSwitch.new(233, 4, 2), AkFsSwitch.new(5, 1, 1), },
    { crossingNeustadt })
local block2Gl1ToNeustadtGleis5 = AkRoute.new(10, trainDirection.WST, block2Gl1, neustadtGleis5,
    { AkFsSignal.new(281, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(226, 1, 1), AkFsSwitch.new(233, 4, 2), AkFsSwitch.new(5, 4, 1), AkFsSwitch.new(235, 2, 1), },
    { crossingNeustadt })
local neustadtGleis1ToBlock3Gl1 = AkRoute.new(11, trainDirection.WST, neustadtGleis1, block3Gl1,
    { AkFsSignal.new(270, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(217, 1, 1), AkFsSwitch.new(557, 1, 1), })
local neustadtGleis2ToBlock3Gl1 = AkRoute.new(12, trainDirection.WST, neustadtGleis2, block3Gl1,
    { AkFsSignal.new(269, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(217, 2, 1), AkFsSwitch.new(557, 1, 1), })
local neustadtGleis4ToBlock3Gl1 = AkRoute.new(13, trainDirection.WST, neustadtGleis4, block3Gl1,
    { AkFsSignal.new(267, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(232, 2, 1), AkFsSwitch.new(221, 1, 1), AkFsSwitch.new(264, 2, 1), AkFsSwitch.new(556, 2, 2), AkFsSwitch.new(557, 2, 1), })
local neustadtGleis5ToBlock3Gl1 = AkRoute.new(14, trainDirection.WST, neustadtGleis5, block3Gl1,
    { AkFsSignal.new(268, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(12, 1, 1), AkFsSwitch.new(221, 2, 1), AkFsSwitch.new(264, 2, 1), AkFsSwitch.new(556, 2, 2), AkFsSwitch.new(557, 2, 1), })
local block3Gl1ToBlockSbWst = AkRoute.new(15, trainDirection.WST, block3Gl1, blockSbWst,
    { AkFsSignal.new(347, S.Hp2, S.Hp0), },
    {})

-- Fahrstrassen Hauptstrecke Richtung Osten
local block4Gl2ToBlock3Gl2 = AkRoute.new(20, trainDirection.OST, block4Gl2, block3Gl2,
    { AkFsSignal.new(344, S.Hp2, S.Hp0), },
    {})
local block3Gl2ToNeustadtGleis3 = AkRoute.new(21, trainDirection.OST, block3Gl2, neustadtGleis3,
    { AkFsSignal.new(263, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(555, 1, 1), AkFsSwitch.new(218, 2, 1), })
local block3Gl2ToNeustadtGleis4 = AkRoute.new(22, trainDirection.OST, block3Gl2, neustadtGleis4,
    { AkFsSignal.new(263, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(555, 1, 1), AkFsSwitch.new(218, 1, 1), AkFsSwitch.new(220, 1, 1), AkFsSwitch.new(232, 1, 1) })
--local block3Gl2ToNeustadtGleis5 = AkRoute.new(24, trainDirection.OST, block3Gl2, neustadtGleis5,
--    { AkFsSignal.new(263, S.Hp2, S.Hp0), },
--    { AkFsSwitch.new(555, 1, 1), AkFsSwitch.new(264, 2, 1), AkFsSwitch.new(221, 2, 1), AkFsSwitch.new(12, 2, 1), AkFsSwitch.new(243, 2, 1) })
local neustadtGleis3ToBlock2Gl2 = AkRoute.new(25, trainDirection.OST, neustadtGleis3, block2Gl2,
    { AkFsSignal.new(266, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(233, 2, 2) },
    { crossingNeustadt })
local neustadtGleis4ToBlock2Gl2 = AkRoute.new(26, trainDirection.OST, neustadtGleis4, block2Gl2,
    { AkFsSignal.new(262, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(233, 1, 2), AkFsSwitch.new(5, 1, 1) },
    { crossingNeustadt })
--local neustadtGleis5ToBlock2Gl2 = AkRoute.new(27, trainDirection.OST, neustadtGleis5, block2Gl2,
--    { AkFsSignal.new(265, S.Hp2, S.Hp0), },
--    { AkFsSwitch.new(233, 1, 1), AkFsSwitch.new(5, 4, 1), AkFsSwitch.new(235, 2, 1) })
--local neustadtGleis6ToBlock2Gl2 = AkRoute.new(24, trainDirection.OST, neustadtGleis6, block2Gl2,
--    { AkFsSignal.new(265, S.Hp2, S.Hp0), },
--    { AkFsSwitch.new(555, 1, 1), AkFsSwitch.new(264, 2, 1), AkFsSwitch.new(221, 2, 1), AkFsSwitch.new(12, 2, 1), AkFsSwitch.new(243, 2, 1) })
--local neustadtGleis7ToBlock2Gl2 = AkRoute.new(24, trainDirection.OST, neustadtGleis7, block2Gl2,
--    { AkFsSignal.new(265, S.Hp2, S.Hp0), },
--    { AkFsSwitch.new(555, 1, 1), AkFsSwitch.new(264, 2, 1), AkFsSwitch.new(221, 2, 1), AkFsSwitch.new(12, 2, 1), AkFsSwitch.new(243, 2, 1) })
local block2Gl2ToGruenbergGleis1 = AkRoute.new(28, trainDirection.OST, block2Gl2, gruenbergGleis1,
    { AkFsSignal.new(27, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(13, 1, 1), },
    { crossingGruenberg })
block2Gl2ToGruenbergGleis1:addShortTrainStopMarker(AkFsSignal.new(257, S.Fahrt, S.Halt), eepRoute.Pers_Nah_Kurz)
block2Gl2ToGruenbergGleis1:addShortTrainStopMarker(AkFsSignal.new(257, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Kurz)
block2Gl2ToGruenbergGleis1:addShortTrainStopMarker(AkFsSignal.new(255, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Norm)

local block2Gl2ToGruenbergGleis3 = AkRoute.new(29, trainDirection.OST, block2Gl2, gruenbergGleis3,
    { AkFsSignal.new(27, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(13, 2, 1), AkFsSwitch.new(65, 4, 2), AkFsSwitch.new(63, 1, 1) })
block2Gl2ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(259, S.Fahrt, S.Halt), eepRoute.Pers_Nah_Kurz)
block2Gl2ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(259, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Kurz)
block2Gl2ToGruenbergGleis3:addShortTrainStopMarker(AkFsSignal.new(260, S.Fahrt, S.Halt), eepRoute.Pers_Frn_Norm)

local block2Gl2ToGruenbergGleis4 = AkRoute.new(30, trainDirection.OST, block2Gl2, gruenbergGleis4,
    { AkFsSignal.new(27, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(13, 2, 1), AkFsSwitch.new(65, 4, 2), AkFsSwitch.new(6, 3, 1), AkFsSwitch.new(63, 4, 1) })
local gruenbergGleis1ToBlock1Gl2 = AkRoute.new(31, trainDirection.OST, gruenbergGleis1, block1Gl2,
    { AkFsSignal.new(35, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(2, 2, 2), })
local gruenbergGleis3ToBlock1Gl2 = AkRoute.new(32, trainDirection.OST, gruenbergGleis3, block1Gl2,
    { AkFsSignal.new(33, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(2, 1, 2), AkFsSwitch.new(62, 2, 1), AkFsSwitch.new(10, 2, 1), AkFsSwitch.new(4, 1, 1), AkFsSwitch.new(9, 1, 1) },
    { crossingGruenberg })
local gruenbergGleis4ToBlock1Gl2 = AkRoute.new(33, trainDirection.OST, gruenbergGleis4, block1Gl2,
    { AkFsSignal.new(36, S.Hp2, S.Hp0), },
    { AkFsSwitch.new(2, 1, 2), AkFsSwitch.new(62, 2, 1), AkFsSwitch.new(10, 2, 1), AkFsSwitch.new(4, 1, 1), AkFsSwitch.new(9, 1, 1), AkFsSwitch.new(8, 1, 1) },
    { crossingGruenberg })
local block1Gl2ToBlockSbOst = AkRoute.new(34, trainDirection.OST, block1Gl2, blockSbOst,
    { AkFsSignal.new(361, S.Hp2, S.Hp0), },
    {})


-- Bahnhof Gruenberg
local bahnhofGruenberg = AkStation.new("Gruenberg")
bahnhofGruenberg:addBlock(gruenbergGleis1)
bahnhofGruenberg:addBlock(gruenbergGleis2)
bahnhofGruenberg:addBlock(gruenbergGleis3)
bahnhofGruenberg:addBlock(gruenbergGleis4)
bahnhofGruenberg:addInfoStructure("#196_Gruenderstrasse1")
bahnhofGruenberg:addInfoStructure("#10_Touristeninfo_EpV_KW1", true)

-- Stellwerk Gruenberg Ost
local signalTowerGbgOst = AkSignalTower.new("Gruenberg Ost")
signalTowerGbgOst:addBlock(block1Gl1ToGruenbergGleis2)
signalTowerGbgOst:addBlock(block1Gl1ToGruenbergGleis3)
signalTowerGbgOst:addBlock(block1Gl1ToGruenbergGleis4)
signalTowerGbgOst:addBlock(gruenbergGleis1ToBlock1Gl2)
signalTowerGbgOst:addBlock(gruenbergGleis3ToBlock1Gl2)
signalTowerGbgOst:addBlock(gruenbergGleis4ToBlock1Gl2)
signalTowerGbgOst:addInfoStructure("#35_Stellwerk Fachwerk")

-- Stellwerk Gruenberg West
local signalTowerGbgWest = AkSignalTower.new("Gruenberg West")
signalTowerGbgWest:addBlock(gruenbergGleis2ToBlock2Gl1)
signalTowerGbgWest:addBlock(gruenbergGleis3ToBlock2Gl1)
signalTowerGbgWest:addBlock(gruenbergGleis4ToBlock2Gl1)
signalTowerGbgWest:addBlock(block2Gl2ToGruenbergGleis1)
signalTowerGbgWest:addBlock(block2Gl2ToGruenbergGleis3)
signalTowerGbgWest:addBlock(block2Gl2ToGruenbergGleis4)
signalTowerGbgWest:addInfoStructure("#155_Stellwerk Fachwerk")

-- Bahnhof Neuststadt
local bahnhofNeustadt = AkStation.new("Neustadt")
bahnhofNeustadt:addBlock(neustadtGleis1)
bahnhofNeustadt:addBlock(neustadtGleis2)
bahnhofNeustadt:addBlock(neustadtGleis3)
bahnhofNeustadt:addBlock(neustadtGleis4)
bahnhofNeustadt:addBlock(neustadtGleis5)
bahnhofNeustadt:addBlock(neustadtGleis6)
bahnhofNeustadt:addBlock(neustadtGleis7)
bahnhofNeustadt:addInfoStructure("#5155_Beamtenwohnhaus 2")
bahnhofNeustadt:addInfoStructure("#11_Touristeninfo_EpV_KW1", true)

-- Stellwerk Neustadt Ost
local signalTowerNstOst = AkSignalTower.new("Neustadt Ost")
signalTowerNstOst:addBlock(block2Gl1ToNeustadtGleis1)
signalTowerNstOst:addBlock(block2Gl1ToNeustadtGleis2)
signalTowerNstOst:addBlock(block2Gl1ToNeustadtGleis4)
signalTowerNstOst:addBlock(block2Gl1ToNeustadtGleis5)
signalTowerNstOst:addBlock(neustadtGleis3ToBlock2Gl2)
signalTowerNstOst:addBlock(neustadtGleis4ToBlock2Gl2)
signalTowerNstOst:addInfoStructure("#18_STW_Kreihnsdoerp_V7_AS1")

-- Stellwerk Neustadt West
local signalTowerNstWst = AkSignalTower.new("Neustadt West")
signalTowerNstWst:addBlock(neustadtGleis1ToBlock3Gl1)
signalTowerNstWst:addBlock(neustadtGleis2ToBlock3Gl1)
signalTowerNstWst:addBlock(neustadtGleis4ToBlock3Gl1)
signalTowerNstWst:addBlock(neustadtGleis5ToBlock3Gl1)
signalTowerNstWst:addBlock(block3Gl2ToNeustadtGleis3)
signalTowerNstWst:addBlock(block3Gl2ToNeustadtGleis4)
signalTowerNstWst:addInfoStructure("#13_STW_Kreihnsdoerp_V7_AS1")

local blockStelle34 = AkSignalTower.new("Blockstelle 3/4")
blockStelle34:addBlock(block3Gl1)
blockStelle34:addBlock(block3Gl1ToBlockSbWst)
blockStelle34:addBlock(blockSbWst)
blockStelle34:addInfoStructure("#11455_Nossen_Posten_68_Wohnhaus")

-------------------------------------------------------------------
-- Kontaktpunkt-Funktionen - Von Osten nach Westen (Hauptstrecke)
-------------------------------------------------------------------
function B_BL1_1_WST(trainName) AkTrainControl.requestRoute(trainName, block1Gl1, trainDirection.WST) end

function V_BL1_1_GBG_GL_2_WST(trainName) AkTrainControl.clearRoutes(trainName, { block1Gl1ToGruenbergGleis2 }) end

function V_BL1_1_GBG_GL_3_WST(trainName) AkTrainControl.clearRoutes(trainName, { block1Gl1ToGruenbergGleis3 }) end

function V_BL1_1_GBG_GL_4_WST(trainName) AkTrainControl.clearRoutes(trainName, { block1Gl1ToGruenbergGleis4 }) end

function B_GBG_GL_2_WST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis2, trainDirection.WST) end

function B_GBG_GL_3_WST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis3, trainDirection.WST) end

function B_GBG_GL_4_WST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis4, trainDirection.WST) end

function V_GBG_GL_X_WST(trainName) AkTrainControl.clearRoutes(trainName, { gruenbergGleis2ToBlock2Gl1, gruenbergGleis3ToBlock2Gl1, gruenbergGleis4ToBlock2Gl1 }) end

function B_BL2_1_WST(trainName) AkTrainControl.requestRoute(trainName, block2Gl1, trainDirection.WST) end

function V_BL2_1_NST_GL_1_WST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl1ToNeustadtGleis1 }) end

function V_BL2_1_NST_GL_2_WST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl1ToNeustadtGleis2 }) end

function V_BL2_1_NST_GL_4_WST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl1ToNeustadtGleis4 }) end

function V_BL2_1_NST_GL_5_WST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl1ToNeustadtGleis5 }) end

function B_NST_GL_1_WST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis1, trainDirection.WST) end

function B_NST_GL_2_WST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis2, trainDirection.WST) end

function B_NST_GL_4_WST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis4, trainDirection.WST) end

function B_NST_GL_5_WST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis5, trainDirection.WST) end

function V_NST_GL_X_WST(trainName) AkTrainControl.clearRoutes(trainName, { neustadtGleis1ToBlock3Gl1, neustadtGleis2ToBlock3Gl1, neustadtGleis4ToBlock3Gl1, neustadtGleis5ToBlock3Gl1 }) end

function B_BL3_1_WST(trainName) AkTrainControl.requestRoute(trainName, block3Gl1, trainDirection.WST) end

function V_BL3_1_WST(trainName) AkTrainControl.clearRoutes(trainName, { block3Gl1ToBlockSbWst }) end

function B_BL4_1_WST(trainName) AkTrainControl.requestRoute(trainName, blockSbWst, trainDirection.WST) end

-------------------------------------------------------------------
-- Kontaktpunkt-Funktionen - Von Westen nach Osten (Hauptstrecke)
-------------------------------------------------------------------
function B_BL4_2_OST(trainName) AkTrainControl.requestRoute(trainName, block4Gl2, trainDirection.OST) end

function V_BL4_2_OST(trainName) AkTrainControl.clearRoutes(trainName, { block4Gl2ToBlock3Gl2 }) end

function B_BL3_2_OST(trainName) AkTrainControl.requestRoute(trainName, block3Gl2, trainDirection.OST) end

function V_BL3_2_NST_GL_3_OST(trainName) AkTrainControl.clearRoutes(trainName, { block3Gl2ToNeustadtGleis3 }) end

function V_BL3_2_NST_GL_4_OST(trainName) AkTrainControl.clearRoutes(trainName, { block3Gl2ToNeustadtGleis4 }) end

function B_NST_GL_3_OST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis3, trainDirection.OST) end

function B_NST_GL_4_OST(trainName) AkTrainControl.requestRoute(trainName, neustadtGleis4, trainDirection.OST) end

function V_NST_GL_X_OST(trainName) AkTrainControl.clearRoutes(trainName, { neustadtGleis3ToBlock2Gl2, neustadtGleis4ToBlock2Gl2 }) end

function B_BL2_2_OST(trainName) AkTrainControl.requestRoute(trainName, block2Gl2, trainDirection.OST) end

function V_BL2_2_GBG_GL_1_OST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl2ToGruenbergGleis1 }) end

function V_BL2_2_GBG_GL_3_OST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl2ToGruenbergGleis3 }) end

function V_BL2_2_GBG_GL_4_OST(trainName) AkTrainControl.clearRoutes(trainName, { block2Gl2ToGruenbergGleis4 }) end

function B_GBG_GL_1_OST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis1, trainDirection.OST) end

function B_GBG_GL_3_OST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis3, trainDirection.OST) end

function B_GBG_GL_4_OST(trainName) AkTrainControl.requestRoute(trainName, gruenbergGleis4, trainDirection.OST) end

function V_GBG_GL_X_OST(trainName) AkTrainControl.clearRoutes(trainName, { gruenbergGleis1ToBlock1Gl2, gruenbergGleis3ToBlock1Gl2, gruenbergGleis4ToBlock1Gl2 }) end

function B_BL1_2_OST(trainName) AkTrainControl.requestRoute(trainName, block1Gl2, trainDirection.OST) end

function V_BL1_2_OST(trainName) AkTrainControl.clearRoutes(trainName, { block1Gl2ToBlockSbOst }) end

function B_BL_SB_OST(trainName) AkTrainControl.clearRoutes(trainName, { block1Gl2ToBlockSbOst }) end



clearlog()
local i = -1
--- Wird alle 200 ms aufgerufen, muss 1 zurueckgeben
--
function EEPMain()
    i = i + 1
    AkTrainControl.calculateRoutes()
    return 1
end

EEPRegisterSignal(714)
EEPChangeInfoSignal(714, "<c>Alle Fahrstrassen resetten")
function EEPOnSignal_714(x)
    EEPSetSignal(714, 1)
    AkTrainControl.reset()
end

EEPRegisterSignal(241)
dbg.fs_schaltung = stellung == 2
EEPChangeInfoSignal(241, "<c>Debug Fahrstrassenschaltung\n<j>Gruen: an, Rot: aus")
function EEPOnSignal_241(stellung)
    dbg.fs_schaltung = stellung == 2
end

EEPRegisterSignal(242)
dbg.fs_pruefung = stellung == 2
EEPChangeInfoSignal(242, "<c>Debug Fahrstrassenpruefung\n<j>Gruen: an, Rot: aus")
function EEPOnSignal_242(stellung)
    dbg.fs_pruefung = stellung == 2
end

EEPRegisterSignal(243)
dbg.anforderung = stellung == 2
EEPChangeInfoSignal(243, "<c>Debug Anforderungen\n<j>Gruen: an, Rot: aus")
function EEPOnSignal_243(stellung)
    dbg.anforderung = stellung == 2
end
