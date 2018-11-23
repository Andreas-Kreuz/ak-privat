Zugname = "#PLATZHALTER"

local AkEEPHilfe = require("ak.eep.AkEepFunktionen")
-- Planer
local AkPlaner = require("ak.planer.AkPlaner")
-- IO
local AkStatistik = require("ak.io.AkStatistik")
-- Strasse
local AkStrabWeiche = require("ak.strasse.AkStrabWeiche")
local AkAmpelModell = require("ak.strasse.AkAmpelModell")
local AkAchsenImmoAmpel = require("ak.strasse.AkAchsenImmoAmpel")
local AkLichtImmoAmpel = require("ak.strasse.AkLichtImmoAmpel")
local AkAmpel = require("ak.strasse.AkAmpel")
local AkRichtung = require("ak.strasse.AkRichtung")
local AkKreuzung = require("ak.strasse.AkKreuzung")
local AkKreuzungsSchaltung = require("ak.strasse.AkKreuzungsSchaltung")
-- Speicher
local AkSpeicherHilfe = require("ak.speicher.AkSpeicher")
local fmt = require("ak.text.AkFormat")


AkEEPHilfe.setzeZugAufGleis(5, "Tuff Tuff Zug")
AkEEPHilfe.setzeZugAufGleis(7, "Zoom Zoom Zug")
AkEEPHilfe.setzeZugAufStrasse(3, "Tatütata")
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
print("Lade ak.anlagen.die-moderne.Die-Moderne-07-main ...")
require("ak.anlagen.die-moderne.Die-Moderne-07-main")

--------------------------------------------------------------------
-- Zeige erweiterte Informationen an                              --
--------------------------------------------------------------------
AkPlaner.debug = false
AkSpeicherHilfe.debug = false
AkAmpel.debug = true
AkKreuzung.debug = false
AkKreuzung.zeigeSignalIdsAllerSignale = false
AkKreuzung.zeigeAnforderungenAlsInfo = true
AkKreuzung.zeigeSchaltungAlsInfo = true

--------------------------------------------------------------------
-- Erste Hilfe - normalerweise nicht notwendig                    --
--------------------------------------------------------------------
-- AkKreuzung.zaehlerZuruecksetzen()







-------------------------------------------------------------------
--AkKreuzung.debug = true
KpBetritt(k1_r8)
KpBetritt(k1_r8)
assert(k1_r8.fahrzeuge == 2, k1_r8.anzahlFahrzeuge)
AkKreuzung.zaehlerZuruecksetzen()
assert(k1_r8.fahrzeuge == 0)
-------------------------------------------------------------------
local function run()
    EEPTime = EEPTime + 20
    EEPMain()
end

local function k1Print()
    list = {}
    for k, v in pairs(k1:getSchaltungen()) do table.insert(list, k) end
    table.sort(list, AkKreuzungsSchaltung.hoeherePrioAls)

    for k, v in ipairs(list) do
        print(k .. ": " .. v:getName() .. " - Prio: " .. v:getPrio())
    end
end

for i = 1, 10 do
    print("Betritt Block")
    KpBetritt(k1_r8)
    run()
    run()
    run()
    run()
    print("Verlasse Block")
    KpVerlasse(k1_r8,true)
    run()
end
