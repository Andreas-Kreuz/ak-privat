--------------------------------
-- Lade Funktionen fuer Ampeln
--------------------------------
local BetterContacts = require("ak.third-party.BetterContacts_BH2")
BetterContacts.setOptions({varname = "Zugname", varnameTrackID = "trackId"})

-- Strasse
local TramSwitch = require("ak.road.TramSwitch")
local TrafficLightModel = require("ak.road.TrafficLightModel")
local AxisStructureTrafficLight = require("ak.road.AxisStructureTrafficLight")
local LightStructureTrafficLight = require("ak.road.LightStructureTrafficLight")
local TrafficLight = require("ak.road.TrafficLight")
local Lane = require("ak.road.Lane")
local Crossing = require("ak.road.Crossing")
local CrossingSequence = require("ak.road.CrossingSequence")

-- Linienführung
local Line = require("ak.public-transport.Line")
local RoadStation = require("ak.public-transport.RoadStation")
local RoadStationDisplayModel = require("ak.public-transport.RoadStationDisplayModel")
local TrainRegistry = require("ak.train.TrainRegistry")

-- Speicher
local StorageUtility = require("ak.storage.StorageUtility")
local fmt = require("ak.core.eep.TippTextFormatter")

local ModuleRegistry = require("ak.core.ModuleRegistry")
ModuleRegistry.registerModules(require("ak.core.CoreLuaModule"), require("ak.data.DataLuaModule"),
                               require("ak.road.CrossingLuaModul"),
                               require("ak.public-transport.PublicTransportLuaModule"))
ModuleRegistry.useDlls(true)
Crossing.loadSettingsFromSlot(22)

function EEPMain()
    -- print("[#Anlage] Speicher: " .. collectgarbage("count"))
    ModuleRegistry.runTasks(1)
    return 1
end

--------------------------------------------
-- Definiere Funktionen fuer Kontaktpunkte
--------------------------------------------
---@param lane Lane
function enterLane(trainName, lane)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleEntered(trainName)
end

---@param lane Lane
function leaveLane(trainName, lane)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleLeft(trainName)
end

-- Kontaktpunktfunktion für "Türen öffnen"
---@param trainName string
function openDoors(trainName)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))

    TrainRegistry.forName(trainName):openDoors()
end

-- Kontaktpunktfunktion für "Türen öffnen"
---@param trainName string
function closeDoors(trainName)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))

    TrainRegistry.forName(trainName):closeDoors()
end

-- Kontaktpunktfunktion für "Das Fahrzeug hat die Haltestelle verlassen"
---@param trainName string
---@param station RoadStation
function stationLeft(trainName, station)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))
    assert(type(station) == "table", "Provide 'station' as 'table' was " .. type(station))
    assert(station.type == "RoadStation", "Provide 'station' as 'RoadStation'")

    Line.trainDeparted(trainName, station)
end

-- Kontaktpunktfunktion für "Das Fahrzeug erreicht die Haltestelle in X minuten"
---@param trainName string
---@param station RoadStation
---@param timeInMinutes number
function stationArrivalPlanned(trainName, station, timeInMinutes)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))
    assert(type(station) == "table", "Provide 'station' as 'table' was " .. type(station))
    assert(station.type == "RoadStation", "Provide 'station' as 'RoadStation'")
    assert(type(timeInMinutes) == "number", "Provide 'timeInMinutes' as 'number' was " .. type(timeInMinutes))

    Line.scheduleDeparture(trainName, station, timeInMinutes)
end

-- Kontaktpunktfunktion für "Türen öffnen"
---@param trainName string
function openDoors(trainName)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))

    TrainRegistry.forName(trainName):openDoors()
end

-- Kontaktpunktfunktion für "Türen öffnen"
---@param trainName string
function closeDoors(trainName)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))

    TrainRegistry.forName(trainName):closeDoors()
end

do
    local K1 = TrafficLight:new("K1", 92, TrafficLightModel.JS2_3er_mit_FG)
    local K2 = TrafficLight:new("K2", 91, TrafficLightModel.JS2_3er_ohne_FG)
    local K3 = TrafficLight:new("K3", 26, TrafficLightModel.JS2_3er_mit_FG)
    local K4 = TrafficLight:new("K4", 142, TrafficLightModel.JS2_3er_mit_FG)
    local K5 = TrafficLight:new("K5", 140, TrafficLightModel.JS2_2er_OFF_YELLOW_GREEN) -- right on K4
    local K6 = TrafficLight:new("K6", 88, TrafficLightModel.JS2_3er_ohne_FG)
    local K7 = TrafficLight:new("K7", 86, TrafficLightModel.JS2_3er_mit_FG)
    local K8 = TrafficLight:new("K8", 87, TrafficLightModel.JS2_3er_ohne_FG)
    local K9 = TrafficLight:new("K9", 85, TrafficLightModel.JS2_3er_ohne_FG)
    local K10 = TrafficLight:new("K10", 83, TrafficLightModel.JS2_3er_ohne_FG)
    local K11 = TrafficLight:new("K11", 84, TrafficLightModel.JS2_3er_mit_FG)
    local K12 = TrafficLight:new("K12", 80, TrafficLightModel.JS2_3er_mit_FG)
    local K13 = TrafficLight:new("K13", 81, TrafficLightModel.JS2_3er_mit_FG)
    local K14 = TrafficLight:new("K14", 82, TrafficLightModel.JS2_3er_ohne_FG)
    local S1 = TrafficLight:new("S1", 96, TrafficLightModel.Unsichtbar_2er, "#5528_Straba Signal Halt",
                                "#5531_Straba Signal geradeaus", "#5529_Straba Signal anhalten",
                                "#5530_Straba Signal A")
    local S2 = TrafficLight:new("S2", -1, TrafficLightModel.NONE, "#5435_Straba Signal Halt",
                                "#5521_Straba Signal geradeaus", "#5520_Straba Signal anhalten",
                                "#5518_Straba Signal A")
    local S3 = TrafficLight:new("S3", -1, TrafficLightModel.NONE, "#5523_Straba Signal Halt",
                                "#5434_Straba Signal links", "#5522_Straba Signal anhalten", "#5433_Straba Signal A")
    local S4 = TrafficLight:new("S4", 95, TrafficLightModel.Unsichtbar_2er, "#5525_Straba Signal Halt",
                                "#5436_Straba Signal rechts", "#5526_Straba Signal anhalten", "#5524_Straba Signal A")
    local lane4Sig = TrafficLight:new("lane4Sig", 89, TrafficLightModel.Unsichtbar_2er)
    local lane8sig = TrafficLight:new("lane8sig", 93, TrafficLightModel.Unsichtbar_2er)

    local F1 = K7
    local F2 = K4
    local F3 = K1
    local F4 = K3
    local F5 = K12
    local F6 = K13
    local F7 = K11
    local F8 = TrafficLight:new("F8", 94, TrafficLightModel.JS2_2er_nur_FG)

    -- region K1-Richtungen
    c1Lane1 = Lane:new("K1 - Fahrspur 1", 1, K1, {Lane.Directions.STRAIGHT})
    c1Lane2 = Lane:new("K1 - Fahrspur 2", 2, K2, {Lane.Directions.LEFT})
    c1Lane3 = Lane:new("K1 - Fahrspur 3", 3, S1, {Lane.Directions.STRAIGHT}, Lane.Type.TRAM):setFahrzeugMultiplikator(
              15)
    c1Lane4 = Lane:new("K1 - Fahrspur 4", 4, lane4Sig, {Lane.Directions.STRAIGHT, Lane.Directions.RIGHT})
    c1Lane5 = Lane:new("K1 - Fahrspur 5", 5, K6, {Lane.Directions.LEFT})
    c1Lane5a = Lane:new("K1 - Fahrspur 5a", 19, K7, {Lane.Directions.LEFT})
    c1Lane6 = Lane:new("K1 - Fahrspur 6", 6, K9, {Lane.Directions.RIGHT})
    c1Lane7 = Lane:new("K1 - Fahrspur 7", 7, K10, {Lane.Directions.STRAIGHT})
    c1Lane8 = Lane:new("K1 - Fahrspur 8", 8, lane8sig, {Lane.Directions.LEFT, Lane.Directions.STRAIGHT},
                       Lane.Type.TRAM):setFahrzeugMultiplikator(15)
    c1Lane10 = Lane:new("K1 - Fahrspur 10", 10, K12,
                        {Lane.Directions.LEFT, Lane.Directions.STRAIGHT, Lane.Directions.RIGHT})
    c1Lane11 = Lane:new("K1 - Fahrspur 11", 11, S4, {Lane.Directions.RIGHT}, Lane.Type.TRAM)

    -- endregion
    -- region K1-Schaltungen
    ---@type Crossing
    c1 = Crossing:new("Bahnhofstr. - Hauptstr.")
    -- c1:setSwitchInStrictOrder(true)

    K4:applyToLane(c1Lane4)
    K5:applyToLane(c1Lane4)
    S2:applyToLane(c1Lane8, "Tram 10 Messe Dresden")
    S3:applyToLane(c1Lane8, "Tram 04 Radebeul West")

    c1Lane3:showRequestsOn(S1)
    c1Lane8:showRequestsOn(S2, "Tram 10 Messe Dresden")
    c1Lane8:showRequestsOn(S3, "Tram 04 Radebeul West")
    c1Lane11:showRequestsOn(S4)

    do
        --- Kreuzung 1: Schaltung 1
        local c1Switching1 = c1:newSequence("S1")
        c1Switching1:addCarLights(K1)
        c1Switching1:addTramLights(S1)
        c1Switching1:addCarLights(K10)
        c1Switching1:addCarLights(K11)
        c1Switching1:addTramLights(S2)
        c1Switching1:addPedestrianLights(F1)
        c1Switching1:addPedestrianLights(F2)
        c1Switching1:addPedestrianLights(F5)
        c1Switching1:addPedestrianLights(F6)
    end

    do
        local c1Switching1a = c1:newSequence("S1a")
        c1Switching1a:addCarLights(K1)
        c1Switching1a:addCarLights(K9)
        c1Switching1a:addCarLights(K10)
        c1Switching1a:addCarLights(K11)
        c1Switching1a:addTramLights(S2)
        c1Switching1a:addPedestrianLights(F5)
        c1Switching1a:addPedestrianLights(F6)
    end

    do
        --- Kreuzung 1: Schaltung 2
        ---@type CrossingSequence
        local c1Switching2 = c1:newSequence("S2")
        c1Switching2:addCarLights(K2)
        c1Switching2:addCarLights(K3)
        c1Switching2:addCarLights(K5)
        c1Switching2:addTramLights(S4)
        c1Switching2:addTramLights(S3)
    end

    do
        --- Kreuzung 1: Schaltung 3
        local c1Switching3 = c1:newSequence("S3")
        c1Switching3:addCarLights(K4)
        c1Switching3:addCarLights(K6)
        c1Switching3:addCarLights(K7)
        c1Switching3:addCarLights(K8)
        c1Switching3:addCarLights(K9)
    end

    do
        local c1Switching3a = c1:newSequence("S3a")
        c1Switching3a:addCarLights(K4)
        c1Switching3a:addCarLights(K12)
        c1Switching3a:addCarLights(K13)
        c1Switching3a:addCarLights(K14)
        c1Switching3a:addPedestrianLights(F3)
        c1Switching3a:addPedestrianLights(F4)
        c1Switching3a:addPedestrianLights(F7)
        c1Switching3a:addPedestrianLights(F8)
    end

    do
        --- Kreuzung 1: Schaltung 4
        local c1Switching4 = c1:newSequence("S4")
        c1Switching4:addCarLights(K9)
        c1Switching4:addCarLights(K10)
        c1Switching4:addCarLights(K11)
        c1Switching4:addTramLights(S2)
        c1Switching4:addTramLights(S4)
    end

    do
        local c1Switching4a = c1:newSequence("S4a")
        c1Switching4a:addCarLights(K9)
        c1Switching4a:addCarLights(K10)
        c1Switching4a:addCarLights(K11)
        c1Switching4a:addTramLights(S3)
        c1Switching4a:addTramLights(S4)
    end

    c1:addStaticCam("Kreuzung 1 (von oben)")
    c1:addStaticCam("K1 - Richtungen 3 (Strab), 2, 1")
    c1:addStaticCam("K1 - Richtungen 5, 4")
    c1:addStaticCam("K1 - Richtungen 9 (Strab links), 8 (Strab gerade), 7, 6")
    c1:addStaticCam("K1 - Richtungen 11 (Strab), 10")

    TramSwitch.new(38, "#5543_Straba Signal Weiche W11", "#5544_Straba Signal Weiche W13")
end
-- endregion

-- region K2-Richtungen
do
    local K1 = TrafficLight:new("K1", 103, TrafficLightModel.JS2_3er_mit_FG)
    local K2 = TrafficLight:new("K2", 104, TrafficLightModel.JS2_3er_mit_FG)
    local K3 = TrafficLight:new("K3", 105, TrafficLightModel.JS2_3er_ohne_FG)
    local K4 = TrafficLight:new("K4", 107, TrafficLightModel.JS2_3er_mit_FG)
    local K5 = TrafficLight:new("K5", 106, TrafficLightModel.JS2_3er_ohne_FG)
    local K6 = TrafficLight:new("K6", 109, TrafficLightModel.JS2_3er_mit_FG)
    local K7 = TrafficLight:new("K7", 97, TrafficLightModel.JS2_3er_mit_FG)
    local K8 = TrafficLight:new("K8", 100, TrafficLightModel.JS2_3er_ohne_FG)
    local K9 = TrafficLight:new("K9", 98, TrafficLightModel.JS2_3er_mit_FG)
    local K10 = TrafficLight:new("K10", 99, TrafficLightModel.JS2_3er_ohne_FG)
    local S1 = TrafficLight:new("S1", 108, TrafficLightModel.Unsichtbar_2er, "#5537_Straba Signal Halt",
                                "#5538_Straba Signal links", "#5539_Straba Signal anhalten", "#5540_Straba Signal A")
    local S2 = TrafficLight:new("S2", 110, TrafficLightModel.Unsichtbar_2er, "#5535_Straba Signal Halt",
                                "#5536_Straba Signal rechts", "#5534_Straba Signal anhalten", "#5533_Straba Signal A")

    local F1 = TrafficLight:new("F1", 101, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure(
               "#5816_Warnblink Fußgänger rechts", "Blinklicht", 0, nil, nil, nil, 50)
    local F2 = TrafficLight:new("F2", 102, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure(
               "#5815_Warnblink Fußgänger links", "Blinklicht", 0, nil, nil, nil, 50)
    local F3 = K7
    local F4 = K9
    local F5 = K4
    local F6 = K6
    local F7 = K1
    local F8 = K2
    local F9 = TrafficLight:new("F9", 111, TrafficLightModel.JS2_2er_nur_FG)
    local F10 = TrafficLight:new("F10", 112, TrafficLightModel.JS2_2er_nur_FG)

    c2Lane1 = Lane:new("K2 - Fahrspur 1", 12, K2, {Lane.Directions.RIGHT})
    c2Lane2 = Lane:new("K2 - Fahrspur 2", 13, K3, {Lane.Directions.LEFT})
    c2Lane3 = Lane:new("K2 - Fahrspur 3", 14, K4, {Lane.Directions.STRAIGHT, Lane.Directions.RIGHT})
    c2Lane4 = Lane:new("K2 - Fahrspur 4", 20, K5, {Lane.Directions.STRAIGHT})
    c2Lane5 = Lane:new("K2 - Fahrspur 5", 15, S1, {Lane.Directions.LEFT}, Lane.Type.TRAM):setFahrzeugMultiplikator(15)
    c2Lane6 = Lane:new("K2 - Fahrspur 6", 16, S2, {Lane.Directions.RIGHT}, Lane.Type.TRAM)
              :setFahrzeugMultiplikator(15)
    c2Lane7 = Lane:new("K2 - Fahrspur 7", 17, K7, {Lane.Directions.STRAIGHT})
    c2Lane7a = Lane:new("K2 - Fahrspur 7a", 21, K8, {Lane.Directions.STRAIGHT})
    c2Lane8 = Lane:new("K2 - Fahrspur 8", 18, K9, {Lane.Directions.LEFT})

    -- endregion
    -- region K2-Schaltungen
    c2 = Crossing:new("Kreuzung 2")

    --- Kreuzung 2: Schaltung 1
    local c2Switching1 = c2:newSequence("S1")
    c2Switching1:addCarLights(K2)
    c2Switching1:addPedestrianLights(F3, F4)
    c2Switching1:addPedestrianLights(F5, F6)

    --- Kreuzung 2: Schaltung 1a
    local c2Switching1a = c2:newSequence("S1a")
    c2Switching1a:addCarLights(K2)
    c2Switching1a:addCarLights(K3)
    c2Switching1a:addPedestrianLights(F1, F2)
    c2Switching1a:addPedestrianLights(F3, F4)

    --- Kreuzung 2: Schaltung 1b
    local c2Switching1b = c2:newSequence("S1b")
    c2Switching1b:addCarLights(K1)
    c2Switching1b:addTramLights(S2)
    c2Switching1b:addPedestrianLights(F1, F2)
    c2Switching1b:addPedestrianLights(F3, F4)

    --- Kreuzung 2: Schaltung 2
    local c2Switching2 = c2:newSequence("S2")
    c2Switching2:addCarLights(K4)
    c2Switching2:addCarLights(K5)
    c2Switching2:addCarLights(K6)
    c2Switching2:addTramLights(S1)
    c2Switching2:addTramLights(S2)
    c2Switching2:addPedestrianLights(F7, F8)
    c2Switching2:addPedestrianLights(F3, F4)

    --- Kreuzung 2: Schaltung 2a
    local c2Switching2a = c2:newSequence("S2a")
    c2Switching2a:addCarLights(K4)
    c2Switching2a:addCarLights(K5)
    c2Switching2a:addCarLights(K6)
    c2Switching2a:addCarLights(K7)
    c2Switching2a:addCarLights(K8)
    c2Switching2a:addPedestrianLights(F7, F8)
    c2Switching2a:addPedestrianLights(F9, F10)

    --- Kreuzung 2: Schaltung 3
    local c2Switching3 = c2:newSequence("S3")
    c2Switching3:addCarLights(K9)
    c2Switching3:addCarLights(K10)
    c2Switching3:addTramLights(S1) -- strab
    c2Switching3:addTramLights(S2) -- strab
    c2Switching3:addPedestrianLights(F1, F2)

    --- Kreuzung 2: Schaltung 3a
    local c2Switching3a = c2:newSequence("S3a")
    c2Switching3a:addCarLights(K9)
    c2Switching3a:addCarLights(K10)
    c2Switching3a:addCarLights(K7)
    c2Switching3a:addCarLights(K8)
    c2Switching3a:addPedestrianLights(F1, F2)
    c2Switching3a:addPedestrianLights(F9, F10)
end
-- endregion

-- !DELETEME
-- Kontaktpunktfunktion
-- 1. Parameter: Zugname aus Bennys EEP-Schnipsel
-- 2. Parameter: Stationsname wie in Destinations.changeOn() hinterlegt
-- 3. Parameter: Abfahrtszeit in Minuten (optional)
function changeDestination(trainName, station, departureTime)
    assert(type(trainName) == "string", "Provide 'trainName' as 'string' was " .. type(trainName))
    assert(type(station) == "table", "Provide 'station' as 'table' was " .. type(station))
    assert(station.type == "RoadStation", "Provide 'station' as 'RoadStation'")
    if departureTime then
        assert(type(departureTime) == "number", "Provide 'departureTime' as 'number' was " .. type(departureTime))
    end

    -- THIS METHOD IS OBSOLETE - use Line.scheduleDeparture(...)
end

-- Line 10
local l10 = Line:new({nr = "10"})
local l10Striesen = l10:addSection("Tram 10 Striesen", "Striesen")
local l10MesseDresden = l10:addSection("Tram 10 Messe Dresden", "Dresden")

-- Linie 04
local l04 = Line:new({nr = "4"})
local l04Striesen = l04:addSection("Tram 04 Striesen", "Striesen")
local l04RadebeulWest = l04:addSection("Tram 04 Radebeul West", "West")

-- Haltestelle Striesen
sStriesen = RoadStation:new("Striesen", -1)

-- Haltestelle Hauptbahnhof
sHauptbahnhof = RoadStation:new("Hauptbahnhof", -1)
sHauptbahnhof:setPlatform(l04Striesen, 1) -- Bahnsteig 1 wird genutzt von Line  4 Richtung Laubegast
sHauptbahnhof:setPlatform(l10Striesen, 1) -- Bahnsteig 1 wird genutzt von Line 10 Richtung Striesen
sHauptbahnhof:setPlatform(l04RadebeulWest, 2) -- Bahnsteig 1 wird genutzt von Line  4 Richtung Radebeul West
sHauptbahnhof:setPlatform(l10MesseDresden, 2) -- Bahnsteig 1 wird genutzt von Line 10 Richtung Messe Dresden
sHauptbahnhof:addDisplay("#207_Tram Schild Gelb DL1", RoadStationDisplayModel.Tram_Schild_DL1, 1) -- Display für Steig 1
sHauptbahnhof:addDisplay("#155_Tram Schild Gelb DL1", RoadStationDisplayModel.Tram_Schild_DL1, 2) -- Display für Steig 2

sMesseStation = RoadStation:new("Messe Dresden", -1)

-- Haltestelle Feuerwehrgasse
sFeuerwehrGasse = RoadStation:new("Feuerwehrgasse", -1)
sFeuerwehrGasse:setPlatform(l10Striesen, 1)
sFeuerwehrGasse:setPlatform(l10MesseDresden, 2)
sFeuerwehrGasse:addDisplay("#273_BusHSdfi_RG3", RoadStationDisplayModel.BusHSdfi_RG3, 2)
-- sMainStation:addDisplay("#273_BusHSdfi_RG3", RoadStationDisplayModel.BusHSdfi_RG3, 1)

-- Haltestelle Messe Dresden
sMesseDresden = RoadStation:new("MesseDresden", -1)

-- Haltestelle Radebeul West
sRadebeulWest = RoadStation:new("Radebeul West", -1)

-- Linie 10 Richtung Striesen
l10Striesen:addStop(sMesseDresden:platform(1))
l10Striesen:addStop(sFeuerwehrGasse:platform(1), 2)
l10Striesen:addStop(sHauptbahnhof:platform(1), 2)
l10Striesen:addStop(sStriesen:platform(1), 3)

-- Linie 10 Richtung Messe Dresden
l10MesseDresden:addStop(sStriesen:platform(2), 0)
l10MesseDresden:addStop(sHauptbahnhof:platform(2), 3)
l10MesseDresden:addStop(sFeuerwehrGasse:platform(2), 2)
l10MesseDresden:addStop(sMesseDresden:platform(2))

-- Linie 4 Richtung Striesen
l04Striesen:addStop(sRadebeulWest:platform(1))
l04Striesen:addStop(sHauptbahnhof:platform(1), 2)
l04Striesen:addStop(sStriesen:platform(1), 3)

-- Linie 4 Richtung Radebeul West
l04RadebeulWest:addStop(sStriesen:platform(2), 0)
l04RadebeulWest:addStop(sHauptbahnhof:platform(2), 3)
l04RadebeulWest:addStop(sRadebeulWest:platform(2))

-- Geplante Linienaenderungen, wenn eine Linie die Kontaktpunktfunktion "changeDestination" aufruft
l10Striesen:setNextSection(l10MesseDresden, 2)
l04Striesen:setNextSection(l04RadebeulWest, 2)
l10MesseDresden:setNextSection(l10Striesen, 2)
l04RadebeulWest:setNextSection(l04Striesen, 2)
