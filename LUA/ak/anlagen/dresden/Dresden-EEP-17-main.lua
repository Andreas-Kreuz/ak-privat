-- Core Stuff
local ModuleRegistry = require("ak.core.ModuleRegistry")
local CoreLuaModule = require("ak.core.CoreLuaModule")
local DataLuaModule = require("ak.data.DataLuaModule")

-- Intersections
local CrossingLuaModule = require("ak.road.CrossingLuaModul")
local Crossing = require("ak.road.Crossing")

-- Public Transport
local PublicTransportLuaModule = require("ak.public-transport.PublicTransportLuaModule")
local Line = require("ak.public-transport.Line")
local LineRegistry = require("ak.public-transport.LineRegistry")
local RoadStation = require("ak.public-transport.RoadStation")

local RSDM = require("ak.public-transport.RoadStationDisplayModel")

-----------------------------------------------------------------------------------------------------------------------
-- Register the required modules
ModuleRegistry.registerModules(CoreLuaModule, DataLuaModule, CrossingLuaModule, PublicTransportLuaModule)
Crossing.loadSettingsFromSlot(1)
Line.loadSettingsFromSlot(2)
-----------------------------------------------------------------------------------------------------------------------
-- Die folgende Methode wird von EEP mind. alle 200 ms ausgef¸hrt
function EEPMain()
    ModuleRegistry.runTasks(1)
    return 1
end
-----------------------------------------------------------------------------------------------------------------------

local linie10 = Line.forName("10")
local linie12 = Line.forName("12")

-- Linie mit Hin- und R¸ckweg
local linie10Messe = linie10:addSection("Linie 10: Tram in Richtung Messe Dresden", "Messe Dresden")
linie10Messe:addStop(RoadStation.forName("Ludwig-Hartmann-Straﬂe"):platform(1), 0)
linie10Messe:addStop(RoadStation.forName("Straﬂbuger Platz"):platform(1), 2)
linie10Messe:addStop(RoadStation.forName("Hauptbahnhof"):platform(1), 2)
-- linie10Messe:addStop(RoadStation.forName("Messe Dresden"):platform(1), 2)

local linie10Striesen = linie10:addSection("Linie 10: Tram in Richtung Striesen", "Striesen")
linie10Striesen:addStop(RoadStation.forName("Messe Dresden"):platform(1), 0)
linie10Striesen:addStop(RoadStation.forName("Hauptbahnhof"):platform(2), 2)
linie10Striesen:addStop(RoadStation.forName("Straﬂbuger Platz"):platform(2), 2)
-- linie10Striesen:addStop(RoadStation.forName("Ludwig-Hartmann-Straﬂe"):platform(1), 2)

local linie12Leutewitz = linie12:addSection("Linie 12: Tram in Richtung Leutewitz", "Leutewitz")
linie12Leutewitz:addStop(RoadStation.forName("Ludwig-Hartmann-Straﬂe"):platform(2), 0)
linie12Leutewitz:addStop(RoadStation.forName("Straﬂbuger Platz"):platform(1), 2)
linie12Leutewitz:addStop(RoadStation.forName("Irgendwo"):platform(1), 2)

local linie12Striesen = linie12:addSection("Linie 12: Tram in Richtung Striesen", "Striesen")
linie12Striesen:addStop(RoadStation.forName("Leutewitz"):platform(2), 2)
linie12Striesen:addStop(RoadStation.forName("Irgendwo"):platform(2), 2)
linie12Striesen:addStop(RoadStation.forName("Straﬂbuger Platz"):platform(2), 2)

linie10Messe:setNextSection(linie10Striesen, 2)
linie10Striesen:setNextSection(linie12Leutewitz, 2)
linie12Leutewitz:setNextSection(linie12Striesen, 2)
linie12Striesen:setNextSection(linie10Messe, 2)

RoadStation.forName("Ludwig-Hartmann-Straﬂe"):platform(1):addDisplay("#1", RSDM.SimpleStructure)
RoadStation.forName("Straﬂbuger Platz"):platform(1):addDisplay("#2", RSDM.SimpleStructure)
RoadStation.forName("Straﬂbuger Platz"):platform(2):addDisplay("#3", RSDM.SimpleStructure)
RoadStation.forName("Hauptbahnhof"):platform(1):addDisplay("#4", RSDM.SimpleStructure)
RoadStation.forName("Hauptbahnhof"):platform(1):addDisplay("#5", RSDM.SimpleStructure)
RoadStation.forName("Messe Dresden"):platform(1):addDisplay("#6", RSDM.SimpleStructure)
