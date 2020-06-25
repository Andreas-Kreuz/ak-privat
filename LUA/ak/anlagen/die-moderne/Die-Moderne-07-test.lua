Zugname = "#PLATZHALTER"

local EepSimulator = require("ak.core.eep.EepSimulator")
local Scheduler = require("ak.scheduler.Scheduler")
local TrafficLight = require("ak.road.TrafficLight")
local Crossing = require("ak.road.Crossing")
local CrossingSequence = require("ak.road.CrossingSequence")
-- Speicher
local StorageUtility = require("ak.storage.StorageUtility")
local fmt = require("ak.core.eep.TippTextFormatter")
local Destinations = require("ak.road.station.Destinations")

EepSimulator.setzeZugAufGleis(5, "Tuff Tuff Zug")
EepSimulator.setzeZugAufGleis(7, "Zoom Zoom Zug")
EepSimulator.setzeZugAufStrasse(3, "Tatütata")
EepSimulator.setzeZugAufStrasse(4, "Tram")
EepSimulator.setzeZugAufStrasse(5, "Tram")
EepSimulator.setzeZugAufStrasse(6, "Tram")

-- endregion

clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartWithDebug = false

EEPStructureSetLight("#5528_Straba Signal Halt", false)
EEPStructureSetLight("#5531_Straba Signal geradeaus", false)
EEPStructureSetLight("#5529_Straba Signal anhalten", false)
EEPStructureSetLight("#5530_Straba Signal A", false)
EEPStructureSetLight("#5435_Straba Signal Halt", false)
EEPStructureSetLight("#5521_Straba Signal geradeaus", false)
EEPStructureSetLight("#5520_Straba Signal anhalten", false)
EEPStructureSetLight("#5518_Straba Signal A", false)
EEPStructureSetLight("#5523_Straba Signal Halt", false)
EEPStructureSetLight("#5434_Straba Signal links", false)
EEPStructureSetLight("#5522_Straba Signal anhalten", false)
EEPStructureSetLight("#5433_Straba Signal A", false)
EEPStructureSetLight("#5525_Straba Signal Halt", false)
EEPStructureSetLight("#5436_Straba Signal rechts", false)
EEPStructureSetLight("#5526_Straba Signal anhalten", false)
EEPStructureSetLight("#5524_Straba Signal A", false)

EEPStructureSetLight("#5537_Straba Signal Halt", false)
EEPStructureSetLight("#5538_Straba Signal links", false)
EEPStructureSetLight("#5539_Straba Signal anhalten", false)
EEPStructureSetLight("#5540_Straba Signal A", false)
EEPStructureSetLight("#5535_Straba Signal Halt", false)
EEPStructureSetLight("#5536_Straba Signal rechts", false)
EEPStructureSetLight("#5534_Straba Signal anhalten", false)
EEPStructureSetLight("#5533_Straba Signal A", false)

--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der erste Schitte an   --
--------------------------------------------------------------------
if AkDebugLoad then print("Loading ak.anlagen.die-moderne.Die-Moderne-07-main ...") end
require("ak.anlagen.die-moderne.Die-Moderne-07-main")

--------------------------------------------------------------------
-- Zeige erweiterte Informationen an                              --
--------------------------------------------------------------------
Scheduler.debug = false
StorageUtility.debug = false
TrafficLight.debug = true
Crossing.debug = false
Crossing.zeigeSignalIdsAllerSignale = false
Crossing.zeigeAnforderungenAlsInfo = true
Crossing.zeigeSchaltungAlsInfo = true

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
-- Crossing.resetVehicles()

-------------------------------------------------------------------
Crossing.initSequences()
enterLane(Zugname, c1Lane8)
enterLane(Zugname, c1Lane8)
assert(c1Lane8.vehicleCount == 2, c1Lane8.anzahlFahrzeuge)
Crossing.resetVehicles()
assert(c1Lane8.vehicleCount == 0)
-------------------------------------------------------------------
local function run()
    EEPTime = EEPTime + 20
    EEPMain()
end

local function k1Print()
    list = {}
    for k, v in pairs(k1:getSequences()) do table.insert(list, k) end
    table.sort(list, CrossingSequence.sequencePriorityComparator)

    for k, v in ipairs(list) do print(k .. ": " .. v:getName() .. " - Prio: " .. v:calculatePriority()) end
end

for i = 1, 10 do
    print("Betritt Block")
    enterLane(Zugname, c1Lane8)
    stationArrivalPlanned(Zugname, sMainStation, 5)
    run()
    stationArrivalPlanned(Zugname, sMainStation, 4)
    run()
    stationArrivalPlanned(Zugname, sMainStation, 3)
    Destinations.changeFor(Zugname, "MainStation")
    run()
    run()
    print("Verlasse Block")
    leaveLane(Zugname, c1Lane8, true)
    stationLeft(Zugname, sMainStation)
    run()
end
