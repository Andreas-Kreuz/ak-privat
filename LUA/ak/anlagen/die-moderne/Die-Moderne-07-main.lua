--------------------------------
-- Lade Funktionen fuer Ampeln
--------------------------------
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


------------------------------------------------
-- Damit kommt wird die Variable "Zugname" automatisch durch EEP belegt
-- http://emaps-eep.de/lua/code-schnipsel
------------------------------------------------
setmetatable(_ENV, { __index = function(_, k) local p = load(k); if p then local f = function(z) local s = Zugname; Zugname = z; p(); Zugname = s end; _ENV[k] = f; return f end; return nil end })

--------------------------------------------
-- Definiere Funktionen fuer Kontaktpunkte
--------------------------------------------
function KpBetritt(richtung)
    assert(richtung, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    richtung:betritt()
end

function KpVerlasse(richtung, signalaufrot)
    assert(richtung, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    richtung:verlasse(signalaufrot, Zugname)
end

--region K1-Richtungen
k1_r1 = AkRichtung:neu("R1", 1, {
    AkAmpel:neu(92, AkAmpelModell.JS2_3er_mit_FG)
}, { 'STRAIGHT' })
k1_r2 = AkRichtung:neu("R2", 2, {
    AkAmpel:neu(26, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(91, AkAmpelModell.JS2_3er_ohne_FG)
}, { 'LEFT' })
k1_r3 = AkRichtung:neu("R3", 3, {
    AkAmpel:neu(96, AkAmpelModell.Unsichtbar_2er, "#5528_Straba Signal Halt", "#5531_Straba Signal geradeaus", "#5529_Straba Signal anhalten", "#5530_Straba Signal A")
}, { 'STRAIGHT' }, 'TRAM'):setFahrzeugMultiplikator(15)
k1_r4 = AkRichtung:neu("R4", 4, {
    AkAmpel:neu(89, AkAmpelModell.JS2_3er_mit_FG),
}, { 'STRAIGHT', 'RIGHT' })
k1_r5 = AkRichtung:neu("R5", 5, {
    AkAmpel:neu(86, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(87, AkAmpelModell.JS2_3er_ohne_FG),
    AkAmpel:neu(88, AkAmpelModell.JS2_3er_ohne_FG)
}, { 'LEFT', 'LEFT' })
k1_r6 = AkRichtung:neu("R6", 6, {
    AkAmpel:neu(85, AkAmpelModell.JS2_3er_ohne_FG)
}, { 'RIGHT' })
k1_r7 = AkRichtung:neu("R7", 7, {
    AkAmpel:neu(83, AkAmpelModell.JS2_3er_ohne_FG),
    AkAmpel:neu(84, AkAmpelModell.JS2_3er_mit_FG)
}, { 'STRAIGHT' })
a1 = AkAmpel:neu(93, AkAmpelModell.Unsichtbar_2er, "#5435_Straba Signal Halt", "#5521_Straba Signal geradeaus", "#5520_Straba Signal anhalten", "#5518_Straba Signal A")
k1_r8 = AkRichtung:neu("R8", 8, {
    a1
}, { 'STRAIGHT' }, 'TRAM'):setFahrzeugMultiplikator(15)
k1_r9 = AkRichtung:neu("R9", 9, {
    AkAmpel:neu(93, AkAmpelModell.Unsichtbar_2er, "#5523_Straba Signal Halt", "#5434_Straba Signal links", "#5522_Straba Signal anhalten", "#5433_Straba Signal A")
}, { 'LEFT' }, 'TRAM'):setFahrzeugMultiplikator(15)
k1_r10 = AkRichtung:neu("R10", 10, {
    AkAmpel:neu(80, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(81, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(82, AkAmpelModell.JS2_3er_ohne_FG)
}, { 'LEFT', 'STRAIGHT', 'RIGHT' })
k1_r11 = AkRichtung:neu("R11", 11, {
    AkAmpel:neu(95, AkAmpelModell.Unsichtbar_2er, "#5525_Straba Signal Halt", "#5436_Straba Signal rechts", "#5526_Straba Signal anhalten", "#5524_Straba Signal A")
}, { 'RIGHT' }, 'TRAM')

k1_r1_fg = AkRichtung:neu("R1 FG", -1, { AkAmpel:neu(86, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(89, AkAmpelModell.JS2_3er_mit_FG) })
k1_r4_fg = AkRichtung:neu("R4 FG", -1, { AkAmpel:neu(92, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(26, AkAmpelModell.JS2_3er_mit_FG) })
k1_r7_fg = AkRichtung:neu("R7 FG", -1, { AkAmpel:neu(80, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(81, AkAmpelModell.JS2_3er_mit_FG) })
k1_r10_fg = AkRichtung:neu("R10 FG", -1, { AkAmpel:neu(84, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(94, AkAmpelModell.JS2_2er_nur_FG) })
--endregion
--region K1-Schaltungen
do
    --- Kreuzung 1: Schaltung 1
    local k1_schaltung1 = AkKreuzungsSchaltung:neu("S1")
    k1_schaltung1:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r1_fg)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    local k1_schaltung1a = AkKreuzungsSchaltung:neu("S1a")
    k1_schaltung1a:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r6)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1a:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    --- Kreuzung 1: Schaltung 2
    local k1_schaltung2 = AkKreuzungsSchaltung:neu("S2")
    k1_schaltung2:fuegeRichtungHinzu(k1_r2)
    k1_schaltung2:addRichtungMitAnforderung(k1_r9)
    k1_schaltung2:fuegeRichtungHinzu(k1_r11)

    --- Kreuzung 1: Schaltung 3
    local k1_schaltung3 = AkKreuzungsSchaltung:neu("S3")
    k1_schaltung3:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3:fuegeRichtungHinzu(k1_r5)
    k1_schaltung3:fuegeRichtungHinzu(k1_r6)

    local k1_schaltung3a = AkKreuzungsSchaltung:neu("S3a")
    k1_schaltung3a:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3a:fuegeRichtungHinzu(k1_r10)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r4_fg)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r10_fg)

    --- Kreuzung 1: Schaltung 4
    local k1_schaltung4 = AkKreuzungsSchaltung:neu("S4")
    k1_schaltung4:fuegeRichtungHinzu(k1_r6)
    k1_schaltung4:fuegeRichtungHinzu(k1_r7)
    k1_schaltung4:addRichtungMitAnforderung(k1_r8)
    k1_schaltung4:fuegeRichtungHinzu(k1_r11)

    local k1_schaltung4a = AkKreuzungsSchaltung:neu("S4a")
    k1_schaltung4a:fuegeRichtungHinzu(k1_r6)
    k1_schaltung4a:fuegeRichtungHinzu(k1_r7)
    k1_schaltung4a:addRichtungMitAnforderung(k1_r9)
    k1_schaltung4a:fuegeRichtungHinzu(k1_r11)

    k1 = AkKreuzung:neu("Kreuzung 1")
    k1:fuegeSchaltungHinzu(k1_schaltung1)
    k1:fuegeSchaltungHinzu(k1_schaltung1a)
    k1:fuegeSchaltungHinzu(k1_schaltung2)
    k1:fuegeSchaltungHinzu(k1_schaltung3)
    k1:fuegeSchaltungHinzu(k1_schaltung3a)
    k1:fuegeSchaltungHinzu(k1_schaltung4)
    k1:fuegeSchaltungHinzu(k1_schaltung4a)

    AkStrabWeiche.new(38, "#5543_Straba Signal Weiche W11", "#5544_Straba Signal Weiche W13")
end
--endregion

--region K2-Richtungen
k2_r1 = AkRichtung:neu("R1", 12, {
    AkAmpel:neu(103, AkAmpelModell.JS2_3er_mit_FG),
})
k2_r2 = AkRichtung:neu("R2", 13, {
    AkAmpel:neu(104, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(105, AkAmpelModell.JS2_3er_ohne_FG),
})
k2_r3 = AkRichtung:neu("R3/4", 14, {
    AkAmpel:neu(107, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(106, AkAmpelModell.JS2_3er_ohne_FG),
    AkAmpel:neu(109, AkAmpelModell.JS2_3er_mit_FG),
})
k2_r5 = AkRichtung:neu("R5", 15, {
    AkAmpel:neu(108, AkAmpelModell.Unsichtbar_2er, "#5537_Straba Signal Halt", "#5538_Straba Signal links", "#5539_Straba Signal anhalten", "#5540_Straba Signal A"),
}):setFahrzeugMultiplikator(15)
k2_r6 = AkRichtung:neu("R6", 16, {
    AkAmpel:neu(110, AkAmpelModell.Unsichtbar_2er, "#5535_Straba Signal Halt", "#5536_Straba Signal rechts", "#5534_Straba Signal anhalten", "#5533_Straba Signal A"),
}):setFahrzeugMultiplikator(15)
k2_r7 = AkRichtung:neu("R7", 17, {
    AkAmpel:neu(97, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(100, AkAmpelModell.JS2_3er_ohne_FG),
})
k2_r8 = AkRichtung:neu("R8", 18, {
    AkAmpel:neu(98, AkAmpelModell.JS2_3er_mit_FG),
    AkAmpel:neu(99, AkAmpelModell.JS2_3er_ohne_FG),
})
k2_r1_fg = AkRichtung:neu("R1 FG", -1, {
    AkAmpel:neu(101, AkAmpelModell.JS2_2er_nur_FG):fuegeAchsenImmoHinzu("#5816_Warnblink Fußgänger rechts", "Blinklicht", 0, nil, nil, nil, 50),
    AkAmpel:neu(102, AkAmpelModell.JS2_2er_nur_FG):fuegeAchsenImmoHinzu("#5815_Warnblink Fußgänger links", "Blinklicht", 0, nil, nil, nil, 50)
})
k2_r1a_fg = AkRichtung:neu("R1a FG", -1, { AkAmpel:neu(97, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(98, AkAmpelModell.JS2_3er_mit_FG) })
k2_r1b_fg = AkRichtung:neu("R10 FG", -1, { AkAmpel:neu(107, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(109, AkAmpelModell.JS2_2er_nur_FG) })
k2_r3_fg = AkRichtung:neu("R3 FG", -1, { AkAmpel:neu(103, AkAmpelModell.JS2_3er_mit_FG), AkAmpel:neu(104, AkAmpelModell.JS2_3er_mit_FG) })
k2_r7_fg = AkRichtung:neu("R7 FG", -1, { AkAmpel:neu(111, AkAmpelModell.JS2_2er_nur_FG), AkAmpel:neu(112, AkAmpelModell.JS2_2er_nur_FG) })
--endregion
--region K2-Schaltungen
do
    --- Kreuzung 2: Schaltung 1
    local k2_schaltung1 = AkKreuzungsSchaltung:neu("S1")
    k2_schaltung1:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1b_fg)

    --- Kreuzung 2: Schaltung 1a
    local k2_schaltung1a = AkKreuzungsSchaltung:neu("S1a")
    k2_schaltung1a:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1a:fuegeRichtungHinzu(k2_r2)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 1b
    local k2_schaltung1b = AkKreuzungsSchaltung:neu("S1b")
    k2_schaltung1b:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1b:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 2
    local k2_schaltung2 = AkKreuzungsSchaltung:neu("S2")
    k2_schaltung2:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung2:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 2a
    local k2_schaltung2a = AkKreuzungsSchaltung:neu("S2a")
    k2_schaltung2a:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2a:fuegeRichtungHinzu(k2_r7)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r7_fg)

    --- Kreuzung 2: Schaltung 3
    local k2_schaltung3 = AkKreuzungsSchaltung:neu("S3")
    k2_schaltung3:fuegeRichtungHinzu(k2_r8)
    k2_schaltung3:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung3:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung3:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)


    --- Kreuzung 2: Schaltung 3a
    local k2_schaltung3a = AkKreuzungsSchaltung:neu("S3a")
    k2_schaltung3a:fuegeRichtungHinzu(k2_r8)
    k2_schaltung3a:fuegeRichtungHinzu(k2_r7)
    k2_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k2_r7_fg)

    k2 = AkKreuzung:neu("Kreuzung 2")
    k2:fuegeSchaltungHinzu(k2_schaltung1)
    k2:fuegeSchaltungHinzu(k2_schaltung1a)
    k2:fuegeSchaltungHinzu(k2_schaltung1b)
    k2:fuegeSchaltungHinzu(k2_schaltung2)
    k2:fuegeSchaltungHinzu(k2_schaltung2a)
    k2:fuegeSchaltungHinzu(k2_schaltung3)
    k2:fuegeSchaltungHinzu(k2_schaltung3a)
end
--endregion

clearlog()

function EEPMain()
    --print("Speicher: " .. collectgarbage("count"))
    AkKreuzung:planeSchaltungenEin()
    AkPlaner:fuehreGeplanteAktionenAus()
    -- AkStatistik:statistikAusgabe()
    return 1
end
