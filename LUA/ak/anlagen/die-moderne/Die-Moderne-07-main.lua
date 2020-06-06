--------------------------------
-- Lade Funktionen fuer Ampeln
--------------------------------
-- Strasse
local TramSwitch = require("ak.road.TramSwitch")
local TrafficLightModel = require("ak.road.TrafficLightModel")
local AxisStructureTrafficLight = require("ak.road.AxisStructureTrafficLight")
local LightStructureTrafficLight = require("ak.road.LightStructureTrafficLight")
local TrafficLight = require("ak.road.TrafficLight")
local Lane = require("ak.road.Lane")
local Crossing = require("ak.road.Crossing")
local CrossingSequence = require("ak.road.CrossingSequence")
-- Speicher
local StorageUtility = require("ak.storage.StorageUtility")
local fmt = require("ak.core.eep.AkTippTextFormat")

local ModuleRegistry = require("ak.core.ModuleRegistry")
ModuleRegistry.registerModules(require("ak.core.CoreLuaModule"), require("ak.data.DataLuaModule"),
                               require("ak.road.CrossingLuaModul"))
ModuleRegistry.useDlls(true)
Crossing.loadSettingsFromSlot(22)

function EEPMain()
    -- print("Speicher: " .. collectgarbage("count"))
    ModuleRegistry.runTasks(1)
    return 1
end

------------------------------------------------
-- Damit kommt wird die Variable "Zugname" automatisch durch EEP belegt
-- http://emaps-eep.de/lua/code-schnipsel
------------------------------------------------
setmetatable(_ENV, {
    __index = function(_, k)
        local p = load(k)
        if p then
            local f = function(z)
                local s = Zugname
                Zugname = z
                p()
                Zugname = s
            end
            _ENV[k] = f
            return f
        end
        return nil
    end
})

--------------------------------------------
-- Definiere Funktionen fuer Kontaktpunkte
--------------------------------------------
---@param lane Lane
function KpBetritt(lane)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleEntered(Zugname)
end

---@param lane Lane
function KpVerlasse(lane)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleLeft(Zugname)
end

do
    local K1 = TrafficLight:new(92, TrafficLightModel.JS2_3er_mit_FG)
    local K2 = TrafficLight:new(91, TrafficLightModel.JS2_3er_ohne_FG)
    local K3 = TrafficLight:new(26, TrafficLightModel.JS2_3er_mit_FG)
    local K4 = TrafficLight:new(142, TrafficLightModel.JS2_3er_mit_FG)
    local K5 = TrafficLight:new(140, TrafficLightModel.JS2_2er_OFF_YELLOW_GREEN) -- right on K4
    local K6 = TrafficLight:new(88, TrafficLightModel.JS2_3er_ohne_FG)
    local K7 = TrafficLight:new(86, TrafficLightModel.JS2_3er_mit_FG)
    local K8 = TrafficLight:new(87, TrafficLightModel.JS2_3er_ohne_FG)
    local K9 = TrafficLight:new(85, TrafficLightModel.JS2_3er_ohne_FG)
    local K10 = TrafficLight:new(83, TrafficLightModel.JS2_3er_ohne_FG)
    local K11 = TrafficLight:new(84, TrafficLightModel.JS2_3er_mit_FG)
    local K12 = TrafficLight:new(80, TrafficLightModel.JS2_3er_mit_FG)
    local K13 = TrafficLight:new(81, TrafficLightModel.JS2_3er_mit_FG)
    local K14 = TrafficLight:new(82, TrafficLightModel.JS2_3er_ohne_FG)
    local S1 = TrafficLight:new(96, TrafficLightModel.Unsichtbar_2er, "#5528_Straba Signal Halt",
                                "#5531_Straba Signal geradeaus", "#5529_Straba Signal anhalten",
                                "#5530_Straba Signal A")
    local S2 = TrafficLight:new(-1, TrafficLightModel.NONE, "#5435_Straba Signal Halt",
                                "#5521_Straba Signal geradeaus", "#5520_Straba Signal anhalten",
                                "#5518_Straba Signal A")
    local S3 = TrafficLight:new(-1, TrafficLightModel.NONE, "#5523_Straba Signal Halt", "#5434_Straba Signal links",
                                "#5522_Straba Signal anhalten", "#5433_Straba Signal A")
    local S4 = TrafficLight:new(95, TrafficLightModel.Unsichtbar_2er, "#5525_Straba Signal Halt",
                                "#5436_Straba Signal rechts", "#5526_Straba Signal anhalten", "#5524_Straba Signal A")
    local lane4Sig = TrafficLight:new(89, TrafficLightModel.Unsichtbar_2er)
    local lane8sig = TrafficLight:new(93, TrafficLightModel.Unsichtbar_2er)

    local F1 = K7
    local F2 = K4
    local F3 = K1
    local F4 = K3
    local F5 = K12
    local F6 = K13
    local F7 = K11
    local F8 = TrafficLight:new(94, TrafficLightModel.JS2_2er_nur_FG)

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

    c1Lane3:showRequestsOn(S1)
    c1Lane4:driveOn(K4)
    c1Lane4:driveOn(K5)
    c1Lane8:driveOn(S2, "Strabalinie 10"):showRequestsOn(S2, "Strabalinie 10")
    c1Lane8:driveOn(S3, "Strabalinie 04"):showRequestsOn(S3, "Strabalinie 04")
    c1Lane11:showRequestsOn(S4)

    do
        --- Kreuzung 1: Schaltung 1
        local c1Switching1 = c1:newSequence("S1")
        c1Switching1:addLane(c1Lane1)
        c1Switching1:addTrafficLight(K1)
        c1Switching1:addLane(c1Lane3)
        c1Switching1:addTrafficLight(S1)
        c1Switching1:addLane(c1Lane7)
        c1Switching1:addTrafficLight(K10)
        c1Switching1:addTrafficLight(K11)
        c1Switching1:addLane(c1Lane8)
        c1Switching1:addTrafficLight(S2)
        c1Switching1:addPedestrianLight(F1)
        c1Switching1:addPedestrianLight(F2)
        c1Switching1:addPedestrianLight(F5)
        c1Switching1:addPedestrianLight(F6)
    end

    do
        local c1Switching1a = c1:newSequence("S1a")
        c1Switching1a:addLane(c1Lane1)
        c1Switching1a:addTrafficLight(K1)
        c1Switching1a:addLane(c1Lane3)
        c1Switching1a:addLane(c1Lane6)
        c1Switching1a:addTrafficLight(K9)
        c1Switching1a:addLane(c1Lane7)
        c1Switching1a:addTrafficLight(K10)
        c1Switching1a:addTrafficLight(K11)
        c1Switching1a:addLane(c1Lane8)
        c1Switching1a:addTrafficLight(S2)
        c1Switching1a:addPedestrianLight(F5)
        c1Switching1a:addPedestrianLight(F6)
    end

    do
        --- Kreuzung 1: Schaltung 2
        ---@type CrossingSequence
        local c1Switching2 = c1:newSequence("S2")
        c1Switching2:addLane(c1Lane2)
        c1Switching2:addTrafficLight(K2)
        c1Switching2:addTrafficLight(K3)
        c1Switching2:addTrafficLight(K5)
        c1Switching2:addLane(c1Lane11)
        c1Switching2:addTrafficLight(S4)
        c1Switching2:addLane(c1Lane8)
        c1Switching2:addTrafficLight(S3)
    end

    do
        --- Kreuzung 1: Schaltung 3
        local c1Switching3 = c1:newSequence("S3")
        c1Switching3:addLane(c1Lane4)
        c1Switching3:addTrafficLight(K4)
        c1Switching3:addLane(c1Lane5)
        c1Switching3:addTrafficLight(K6)
        c1Switching3:addLane(c1Lane5a)
        c1Switching3:addTrafficLight(K7)
        c1Switching3:addTrafficLight(K8)
        c1Switching3:addLane(c1Lane6)
        c1Switching3:addTrafficLight(K9)
    end

    do
        local c1Switching3a = c1:newSequence("S3a")
        c1Switching3a:addLane(c1Lane4)
        c1Switching3a:addTrafficLight(K4)
        c1Switching3a:addLane(c1Lane10)
        c1Switching3a:addTrafficLight(K12)
        c1Switching3a:addTrafficLight(K13)
        c1Switching3a:addTrafficLight(K14)
        c1Switching3a:addPedestrianLight(F3)
        c1Switching3a:addPedestrianLight(F4)
        c1Switching3a:addPedestrianLight(F7)
        c1Switching3a:addPedestrianLight(F8)
    end

    do
        --- Kreuzung 1: Schaltung 4
        local c1Switching4 = c1:newSequence("S4")
        c1Switching4:addLane(c1Lane6)
        c1Switching4:addTrafficLight(K9)
        c1Switching4:addLane(c1Lane7)
        c1Switching4:addTrafficLight(K10)
        c1Switching4:addTrafficLight(K11)
        c1Switching4:addLane(c1Lane8)
        c1Switching4:addTrafficLight(S2)
        c1Switching4:addLane(c1Lane11)
        c1Switching4:addTrafficLight(S4)
    end

    do
        local c1Switching4a = c1:newSequence("S4a")
        c1Switching4a:addLane(c1Lane6)
        c1Switching4a:addTrafficLight(K9)
        c1Switching4a:addLane(c1Lane7)
        c1Switching4a:addTrafficLight(K10)
        c1Switching4a:addTrafficLight(K11)
        c1Switching4a:addLane(c1Lane8, {Lane.Directions.LEFT}, {"Strabalinie 04"}, Lane.RequestType.ANFORDERUNG)
        c1Switching4a:addTrafficLight(S3)
        c1Switching4a:addLane(c1Lane11)
        c1Switching4a:addTrafficLight(S4)
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
    local K1 = TrafficLight:new(103, TrafficLightModel.JS2_3er_mit_FG)
    local K2 = TrafficLight:new(104, TrafficLightModel.JS2_3er_mit_FG)
    local K3 = TrafficLight:new(105, TrafficLightModel.JS2_3er_ohne_FG)
    local K4 = TrafficLight:new(107, TrafficLightModel.JS2_3er_mit_FG)
    local K5 = TrafficLight:new(106, TrafficLightModel.JS2_3er_ohne_FG)
    local K6 = TrafficLight:new(109, TrafficLightModel.JS2_3er_mit_FG)
    local K7 = TrafficLight:new(97, TrafficLightModel.JS2_3er_mit_FG)
    local K8 = TrafficLight:new(100, TrafficLightModel.JS2_3er_ohne_FG)
    local K9 = TrafficLight:new(98, TrafficLightModel.JS2_3er_mit_FG)
    local K10 = TrafficLight:new(99, TrafficLightModel.JS2_3er_ohne_FG)
    local S1 = TrafficLight:new(108, TrafficLightModel.Unsichtbar_2er, "#5537_Straba Signal Halt",
                                "#5538_Straba Signal links", "#5539_Straba Signal anhalten", "#5540_Straba Signal A")
    local S2 = TrafficLight:new(110, TrafficLightModel.Unsichtbar_2er, "#5535_Straba Signal Halt",
                                "#5536_Straba Signal rechts", "#5534_Straba Signal anhalten", "#5533_Straba Signal A")

    local F1 = TrafficLight:new(101, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure(
                   "#5816_Warnblink Fuﬂg‰nger rechts", "Blinklicht", 0, nil, nil, nil, 50)
    local F2 = TrafficLight:new(102, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure(
                   "#5815_Warnblink Fuﬂg‰nger links", "Blinklicht", 0, nil, nil, nil, 50)
    local F3 = K7
    local F4 = K9
    local F5 = K4
    local F6 = K6
    local F7 = K1
    local F8 = K2
    local F9 = TrafficLight:new(111, TrafficLightModel.JS2_2er_nur_FG)
    local F10 = TrafficLight:new(112, TrafficLightModel.JS2_2er_nur_FG)

    c2Lane1 = Lane:new("K2 - Fahrspur 1", 12, K1, {Lane.Directions.RIGHT})
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
    c2Switching1:addLane(c2Lane1)
    c2Switching1:addTrafficLight(K2)
    c2Switching1:addPedestrianLight(F3, F4)
    c2Switching1:addPedestrianLight(F5, F6)

    --- Kreuzung 2: Schaltung 1a
    local c2Switching1a = c2:newSequence("S1a")
    c2Switching1a:addLane(c2Lane1)
    c2Switching1a:addTrafficLight(K2)
    c2Switching1a:addLane(c2Lane2)
    c2Switching1a:addTrafficLight(K3)
    c2Switching1a:addPedestrianLight(F1, F2)
    c2Switching1a:addPedestrianLight(F3, F4)

    --- Kreuzung 2: Schaltung 1b
    local c2Switching1b = c2:newSequence("S1b")
    c2Switching1b:addLane(c2Lane1)
    c2Switching1b:addTrafficLight(K1)
    c2Switching1b:addLane(c2Lane6) -- strab
    c2Switching1b:addTrafficLight(S2)
    c2Switching1b:addPedestrianLight(F1, F2)
    c2Switching1b:addPedestrianLight(F3, F4)

    --- Kreuzung 2: Schaltung 2
    local c2Switching2 = c2:newSequence("S2")
    c2Switching2:addLane(c2Lane3)
    c2Switching2:addTrafficLight(K4)
    c2Switching2:addLane(c2Lane4)
    c2Switching2:addTrafficLight(K5)
    c2Switching2:addTrafficLight(K6)
    c2Switching2:addLane(c2Lane5) -- strab
    c2Switching2:addTrafficLight(S1)
    c2Switching2:addLane(c2Lane6) -- strab
    c2Switching2:addTrafficLight(S2)
    c2Switching2:addPedestrianLight(F7, F8)
    c2Switching2:addPedestrianLight(F3, F4)

    --- Kreuzung 2: Schaltung 2a
    local c2Switching2a = c2:newSequence("S2a")
    c2Switching2a:addLane(c2Lane3)
    c2Switching2a:addTrafficLight(K4)
    c2Switching2a:addLane(c2Lane4)
    c2Switching2a:addTrafficLight(K5)
    c2Switching2a:addTrafficLight(K6)
    c2Switching2a:addLane(c2Lane7)
    c2Switching2a:addTrafficLight(K7)
    c2Switching2a:addLane(c2Lane7a)
    c2Switching2a:addTrafficLight(K8)
    c2Switching2a:addPedestrianLight(F7, F8)
    c2Switching2a:addPedestrianLight(F9, F10)

    --- Kreuzung 2: Schaltung 3
    local c2Switching3 = c2:newSequence("S3")
    c2Switching3:addLane(c2Lane8)
    c2Switching3:addTrafficLight(K9)
    c2Switching3:addTrafficLight(K10)
    c2Switching3:addLane(c2Lane5) -- strab
    c2Switching3:addTrafficLight(S1) -- strab
    c2Switching3:addLane(c2Lane6) -- strab
    c2Switching3:addTrafficLight(S2) -- strab
    c2Switching3:addPedestrianLight(F1, F2)

    --- Kreuzung 2: Schaltung 3a
    local c2Switching3a = c2:newSequence("S3a")
    c2Switching3a:addLane(c2Lane8)
    c2Switching3a:addTrafficLight(K9)
    c2Switching3a:addTrafficLight(K10)
    c2Switching3a:addLane(c2Lane7)
    c2Switching3a:addTrafficLight(K7)
    c2Switching3a:addLane(c2Lane7a)
    c2Switching3a:addTrafficLight(K8)
    c2Switching3a:addPedestrianLight(F1, F2)
    c2Switching3a:addPedestrianLight(F9, F10)
end
-- endregion
