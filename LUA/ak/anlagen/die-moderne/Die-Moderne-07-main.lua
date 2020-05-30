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
local CrossingCircuit = require("ak.road.CrossingCircuit")
-- Speicher
local StorageUtility = require("ak.storage.StorageUtility")
local fmt = require("ak.core.eep.AkTippTextFormat")

Lane.debug = true

local ModuleRegistry = require("ak.core.ModuleRegistry")
ModuleRegistry.registerModules(require("ak.core.CoreLuaModule"), require("ak.data.DataLuaModule"),
                               require("ak.road.CrossingLuaModul"))
ModuleRegistry.useDlls(true)

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
function KpBetritt(lane)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleEntered(Zugname)
end

function KpVerlasse(lane, switchToRed)
    assert(lane, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    lane:vehicleLeft(switchToRed, Zugname)
end

-- region K1-Richtungen
k1_r1 = Lane:new("K1 - Fahrspur 1", 1, {TrafficLight:new(92, TrafficLightModel.JS2_3er_mit_FG)}, {"STRAIGHT"})
k1_r2 = Lane:new("K1 - Fahrspur 2", 2, {
    TrafficLight:new(26, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(91, TrafficLightModel.JS2_3er_ohne_FG)
}, {"LEFT"})
k1_r3 = Lane:new("K1 - Fahrspur 3", 3, {
    TrafficLight:new(96, TrafficLightModel.Unsichtbar_2er, "#5528_Straba Signal Halt",
                     "#5531_Straba Signal geradeaus", "#5529_Straba Signal anhalten", "#5530_Straba Signal A")
}, {"STRAIGHT"}, "TRAM"):setFahrzeugMultiplikator(15)
k1_r4 =
    Lane:new("K1 - Fahrspur 4", 4, {TrafficLight:new(89, TrafficLightModel.JS2_3er_mit_FG)}, {"STRAIGHT", "RIGHT"})
k1_r5 = Lane:new("K1 - Fahrspur 5", 5, {TrafficLight:new(88, TrafficLightModel.JS2_3er_ohne_FG)}, {"LEFT"})
k1_r5a = Lane:new("K1 - Fahrspur 5a", 19, {
    TrafficLight:new(86, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(87, TrafficLightModel.JS2_3er_ohne_FG)
}, {"LEFT"})
k1_r6 = Lane:new("K1 - Fahrspur 6", 6, {TrafficLight:new(85, TrafficLightModel.JS2_3er_ohne_FG)}, {"RIGHT"})
k1_r7 = Lane:new("K1 - Fahrspur 7", 7, {
    TrafficLight:new(83, TrafficLightModel.JS2_3er_ohne_FG), TrafficLight:new(84, TrafficLightModel.JS2_3er_mit_FG)
}, {"STRAIGHT"})
a1 = TrafficLight:new(93, TrafficLightModel.Unsichtbar_2er, "#5435_Straba Signal Halt",
                      "#5521_Straba Signal geradeaus", "#5520_Straba Signal anhalten", "#5518_Straba Signal A")
k1_r8 = Lane:new("K1 - Fahrspur 8", 8, {a1}, {"STRAIGHT"}, "TRAM"):setFahrzeugMultiplikator(15)
k1_r9 = Lane:new("K1 - Fahrspur 9", 9, {
    TrafficLight:new(93, TrafficLightModel.Unsichtbar_2er, "#5523_Straba Signal Halt", "#5434_Straba Signal links",
                     "#5522_Straba Signal anhalten", "#5433_Straba Signal A")
}, {"LEFT"}, "TRAM"):setFahrzeugMultiplikator(15)
k1_r10 = Lane:new("K1 - Fahrspur 10", 10, {
    TrafficLight:new(80, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(81, TrafficLightModel.JS2_3er_mit_FG),
    TrafficLight:new(82, TrafficLightModel.JS2_3er_ohne_FG)
}, {"LEFT", "STRAIGHT", "RIGHT"})
k1_r11 = Lane:new("K1 - Fahrspur 11", 11, {
    TrafficLight:new(95, TrafficLightModel.Unsichtbar_2er, "#5525_Straba Signal Halt", "#5436_Straba Signal rechts",
                     "#5526_Straba Signal anhalten", "#5524_Straba Signal A")
}, {"RIGHT"}, "TRAM")

k1_r1_fg = Lane:new("K1 - Furt 1 FG", -1, {
    TrafficLight:new(86, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(89, TrafficLightModel.JS2_3er_mit_FG)
})
k1_r4_fg = Lane:new("K1 - Furt 4 FG", -1, {
    TrafficLight:new(92, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(26, TrafficLightModel.JS2_3er_mit_FG)
})
k1_r7_fg = Lane:new("K1 - Furt 7 FG", -1, {
    TrafficLight:new(80, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(81, TrafficLightModel.JS2_3er_mit_FG)
})
k1_r10_fg = Lane:new("K1 - Furt 10 FG", -1, {
    TrafficLight:new(84, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(94, TrafficLightModel.JS2_2er_nur_FG)
})
-- endregion
-- region K1-Schaltungen
do
    --- Kreuzung 1: Schaltung 1
    local k1_schaltung1 = CrossingCircuit:new("S1")
    k1_schaltung1:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r1_fg)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    local k1_schaltung1a = CrossingCircuit:new("S1a")
    k1_schaltung1a:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r6)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1a:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    --- Kreuzung 1: Schaltung 2
    local k1_schaltung2 = CrossingCircuit:new("S2")
    k1_schaltung2:fuegeRichtungHinzu(k1_r2)
    k1_schaltung2:addRichtungMitAnforderung(k1_r9)
    k1_schaltung2:fuegeRichtungHinzu(k1_r11)

    --- Kreuzung 1: Schaltung 3
    local k1_schaltung3 = CrossingCircuit:new("S3")
    k1_schaltung3:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3:fuegeRichtungHinzu(k1_r5)
    k1_schaltung3:fuegeRichtungHinzu(k1_r5a)
    k1_schaltung3:fuegeRichtungHinzu(k1_r6)

    local k1_schaltung3a = CrossingCircuit:new("S3a")
    k1_schaltung3a:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3a:fuegeRichtungHinzu(k1_r10)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r4_fg)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r10_fg)

    --- Kreuzung 1: Schaltung 4
    local k1_schaltung4 = CrossingCircuit:new("S4")
    k1_schaltung4:fuegeRichtungHinzu(k1_r6)
    k1_schaltung4:fuegeRichtungHinzu(k1_r7)
    k1_schaltung4:addRichtungMitAnforderung(k1_r8)
    k1_schaltung4:fuegeRichtungHinzu(k1_r11)

    local k1_schaltung4a = CrossingCircuit:new("S4a")
    k1_schaltung4a:fuegeRichtungHinzu(k1_r6)
    k1_schaltung4a:fuegeRichtungHinzu(k1_r7)
    k1_schaltung4a:addRichtungMitAnforderung(k1_r9)
    k1_schaltung4a:fuegeRichtungHinzu(k1_r11)

    k1 = Crossing:new("Bahnhofstr. - Hauptstr.")
    k1:fuegeSchaltungHinzu(k1_schaltung1)
    k1:fuegeSchaltungHinzu(k1_schaltung1a)
    k1:fuegeSchaltungHinzu(k1_schaltung2)
    k1:fuegeSchaltungHinzu(k1_schaltung3)
    k1:fuegeSchaltungHinzu(k1_schaltung3a)
    k1:fuegeSchaltungHinzu(k1_schaltung4)
    k1:fuegeSchaltungHinzu(k1_schaltung4a)

    k1:fuegeStatischeKameraHinzu("Kreuzung 1 (von oben)")
    k1:fuegeStatischeKameraHinzu("K1 - Richtungen 3 (Strab), 2, 1")
    k1:fuegeStatischeKameraHinzu("K1 - Richtungen 5, 4")
    k1:fuegeStatischeKameraHinzu("K1 - Richtungen 9 (Strab links), 8 (Strab gerade), 7, 6")
    k1:fuegeStatischeKameraHinzu("K1 - Richtungen 11 (Strab), 10")

    TramSwitch.new(38, "#5543_Straba Signal Weiche W11", "#5544_Straba Signal Weiche W13")
end
-- endregion

-- region K2-Richtungen
k2_r1 = Lane:new("K2 - Fahrspur 1", 12, {TrafficLight:new(103, TrafficLightModel.JS2_3er_mit_FG)})
k2_r2 = Lane:new("K2 - Fahrspur 2", 13, {
    TrafficLight:new(104, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(105, TrafficLightModel.JS2_3er_ohne_FG)
})
k2_r3 = Lane:new("K2 - Fahrspur 3", 14, {TrafficLight:new(107, TrafficLightModel.JS2_3er_mit_FG)})
k2_r4 = Lane:new("K2 - Fahrspur 4", 20, {
    TrafficLight:new(106, TrafficLightModel.JS2_3er_ohne_FG), TrafficLight:new(109, TrafficLightModel.JS2_3er_mit_FG)
})
k2_r5 = Lane:new("K2 - Fahrspur 5", 15, {
    TrafficLight:new(108, TrafficLightModel.Unsichtbar_2er, "#5537_Straba Signal Halt", "#5538_Straba Signal links",
                     "#5539_Straba Signal anhalten", "#5540_Straba Signal A")
}):setFahrzeugMultiplikator(15)
k2_r6 = Lane:new("K2 - Fahrspur 6", 16, {
    TrafficLight:new(110, TrafficLightModel.Unsichtbar_2er, "#5535_Straba Signal Halt", "#5536_Straba Signal rechts",
                     "#5534_Straba Signal anhalten", "#5533_Straba Signal A")
}):setFahrzeugMultiplikator(15)
k2_r7 = Lane:new("K2 - Fahrspur 7", 17, {TrafficLight:new(97, TrafficLightModel.JS2_3er_mit_FG)})
k2_r7a = Lane:new("K2 - Fahrspur 7", 21, {TrafficLight:new(100, TrafficLightModel.JS2_3er_ohne_FG)})
k2_r8 = Lane:new("K2 - Fahrspur 8", 18, {
    TrafficLight:new(98, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(99, TrafficLightModel.JS2_3er_ohne_FG)
})
k2_r1_fg = Lane:new("K2 - Fahrspur 1 FG", -1, {
    TrafficLight:new(101, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure("#5816_Warnblink Fuﬂg‰nger rechts",
                                                                             "Blinklicht", 0, nil, nil, nil, 50),
    TrafficLight:new(102, TrafficLightModel.JS2_2er_nur_FG):addAxisStructure("#5815_Warnblink Fuﬂg‰nger links",
                                                                             "Blinklicht", 0, nil, nil, nil, 50)
})
k2_r1a_fg = Lane:new("K2 - Furt 1a FG", -1, {
    TrafficLight:new(97, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(98, TrafficLightModel.JS2_3er_mit_FG)
})
k2_r1b_fg = Lane:new("K2 - Furt 10 FG", -1, {
    TrafficLight:new(107, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(109, TrafficLightModel.JS2_3er_mit_FG)
})
k2_r3_fg = Lane:new("K2 - Furt 3 FG", -1, {
    TrafficLight:new(103, TrafficLightModel.JS2_3er_mit_FG), TrafficLight:new(104, TrafficLightModel.JS2_3er_mit_FG)
})
k2_r7_fg = Lane:new("K2 - Furt 7 FG", -1, {
    TrafficLight:new(111, TrafficLightModel.JS2_2er_nur_FG), TrafficLight:new(112, TrafficLightModel.JS2_2er_nur_FG)
})
-- endregion
-- region K2-Schaltungen
do
    --- Kreuzung 2: Schaltung 1
    local k2_schaltung1 = CrossingCircuit:new("S1")
    k2_schaltung1:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1b_fg)

    --- Kreuzung 2: Schaltung 1a
    local k2_schaltung1a = CrossingCircuit:new("S1a")
    k2_schaltung1a:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1a:fuegeRichtungHinzu(k2_r2)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 1b
    local k2_schaltung1b = CrossingCircuit:new("S1b")
    k2_schaltung1b:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1b:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 2
    local k2_schaltung2 = CrossingCircuit:new("S2")
    k2_schaltung2:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2:fuegeRichtungHinzu(k2_r4)
    k2_schaltung2:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung2:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 2a
    local k2_schaltung2a = CrossingCircuit:new("S2a")
    k2_schaltung2a:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2a:fuegeRichtungHinzu(k2_r4)
    k2_schaltung2a:fuegeRichtungHinzu(k2_r7)
    k2_schaltung2a:fuegeRichtungHinzu(k2_r7a)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r7_fg)

    --- Kreuzung 2: Schaltung 3
    local k2_schaltung3 = CrossingCircuit:new("S3")
    k2_schaltung3:fuegeRichtungHinzu(k2_r8)
    k2_schaltung3:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung3:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung3:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)

    --- Kreuzung 2: Schaltung 3a
    local k2_schaltung3a = CrossingCircuit:new("S3a")
    k2_schaltung3a:fuegeRichtungHinzu(k2_r8)
    k2_schaltung3a:fuegeRichtungHinzu(k2_r7)
    k2_schaltung3a:fuegeRichtungHinzu(k2_r7a)
    k2_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k2_r7_fg)

    k2 = Crossing:new("Kreuzung 2")
    k2:fuegeSchaltungHinzu(k2_schaltung1)
    k2:fuegeSchaltungHinzu(k2_schaltung1a)
    k2:fuegeSchaltungHinzu(k2_schaltung1b)
    k2:fuegeSchaltungHinzu(k2_schaltung2)
    k2:fuegeSchaltungHinzu(k2_schaltung2a)
    k2:fuegeSchaltungHinzu(k2_schaltung3)
    k2:fuegeSchaltungHinzu(k2_schaltung3a)
end
-- endregion
