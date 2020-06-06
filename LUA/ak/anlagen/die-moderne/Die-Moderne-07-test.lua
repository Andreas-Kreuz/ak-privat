Zugname = "#PLATZHALTER"

local AkEEPHilfe = require("ak.core.eep.AkEepFunktionen")
local Scheduler = require("ak.scheduler.Scheduler")
local TrafficLight = require("ak.road.TrafficLight")
local Crossing = require("ak.road.Crossing")
local CrossingSequence = require("ak.road.CrossingSequence")
-- Speicher
local StorageUtility = require("ak.storage.StorageUtility")
local fmt = require("ak.core.eep.AkTippTextFormat")

AkEEPHilfe.setzeZugAufGleis(5, "Tuff Tuff Zug")
AkEEPHilfe.setzeZugAufGleis(7, "Zoom Zoom Zug")
AkEEPHilfe.setzeZugAufStrasse(3, "Tat�tata")
AkEEPHilfe.setzeZugAufStrasse(4, "Tram")
AkEEPHilfe.setzeZugAufStrasse(5, "Tram")
AkEEPHilfe.setzeZugAufStrasse(6, "Tram")

-- endregion

clearlog()
--------------------------------------------------------------------
-- Zeigt erweiterte Informationen waehrend der Initialisierung an --
--------------------------------------------------------------------
AkStartMitDebug = false



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
--Crossing.debug = true
KpBetritt(c1Lane8)
KpBetritt(c1Lane8)
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
    for k, v in pairs(k1:getSequences()) do
        table.insert(list, k)
    end
    table.sort(list, CrossingSequence.sequencePriorityComparator)

    for k, v in ipairs(list) do
        print(k .. ": " .. v:getName() .. " - Prio: " .. v:calculatePriority())
    end
end

for i = 1, 10 do
    print("Betritt Block")
    KpBetritt(c1Lane8)
    run()
    run()
    run()
    run()
    print("Verlasse Block")
    KpVerlasse(c1Lane8, true)
    run()
end
