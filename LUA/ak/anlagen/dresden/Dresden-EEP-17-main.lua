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
local RoadStation = require("ak.public-transport.RoadStation")
local RSDM = require("ak.public-transport.RoadStationDisplayModel")

-----------------------------------------------------------------------------------------------------------------------
-- Register the required modules
ModuleRegistry.registerModules(CoreLuaModule, DataLuaModule, CrossingLuaModule, PublicTransportLuaModule)
Crossing.loadSettingsFromSlot(1)
Line.loadSettingsFromSlot(2)
-----------------------------------------------------------------------------------------------------------------------
-- Die folgende Methode wird von EEP mind. alle 200 ms ausgeführt
function EEPMain()
    ModuleRegistry.runTasks(1)
    return 1
end
-----------------------------------------------------------------------------------------------------------------------
