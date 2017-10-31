--------------------------------
-- Lade Funktionen fuer Ampeln
--------------------------------
print('Lade AkStrasse ...')
require "ak.strasse.AkStrasse"
AkAmpel.zeigeAnforderungen = true

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
    --print(richtung.name .. " betreten durch: " .. Zugname)
    richtung:betritt()
end

function KpVerlasse(richtung, signalaufrot)
    assert(richtung, "richtung darf nicht nil sein. Richtige Lua-Funktion im Kontaktpunkt?")
    --print(richtung.name .. " verlassen von: " .. Zugname)
    richtung:verlasse(signalaufrot, Zugname)
end

--region K1-Richtungen
k1_r1 = AkRichtung:neu("R1", 1, {
    AkAmpel:neu(92, Ak_Ampel_3er_XXX_FG)
})
k1_r2 = AkRichtung:neu("R2", 2, {
    AkAmpel:neu(26, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(91, Ak_Ampel_3er_XXX)
})
k1_r3 = AkRichtung:neu("R3", 3, {
    AkAmpel:neu(96, Ak_Ampel_Unsichtbar, "#5528_Straba Signal Halt", "#5531_Straba Signal geradeaus", "#5529_Straba Signal anhalten", "#5530_Straba Signal A")
}):setFahrzeugMultiplikator(15)
k1_r4 = AkRichtung:neu("R4", 4, {
    AkAmpel:neu(89, Ak_Ampel_3er_XXX_FG),
})
k1_r5 = AkRichtung:neu("R5", 5, {
    AkAmpel:neu(86, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(87, Ak_Ampel_3er_XXX),
    AkAmpel:neu(88, Ak_Ampel_3er_XXX)
})
k1_r6 = AkRichtung:neu("R6", 6, {
    AkAmpel:neu(85, Ak_Ampel_3er_XXX)
})
k1_r7 = AkRichtung:neu("R7", 7, {
    AkAmpel:neu(83, Ak_Ampel_3er_XXX),
    AkAmpel:neu(84, Ak_Ampel_3er_XXX_FG)
})
a1 = AkAmpel:neu(93, Ak_Ampel_Unsichtbar, "#5435_Straba Signal Halt", "#5521_Straba Signal geradeaus", "#5520_Straba Signal anhalten", "#5518_Straba Signal A")
a1.debug = true
k1_r8 = AkRichtung:neu("R8", 8, {
    a1
}):setFahrzeugMultiplikator(15)
k1_r9 = AkRichtung:neu("R9", 9, {
    AkAmpel:neu(93, Ak_Ampel_Unsichtbar, "#5523_Straba Signal Halt", "#5434_Straba Signal links", "#5522_Straba Signal anhalten", "#5433_Straba Signal A")
}):setFahrzeugMultiplikator(15)
k1_r10 = AkRichtung:neu("R10", 10, {
    AkAmpel:neu(80, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(81, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(82, Ak_Ampel_3er_XXX)
})
k1_r11 = AkRichtung:neu("R11", 11, {
    AkAmpel:neu(95, Ak_Ampel_Unsichtbar, "#5525_Straba Signal Halt", "#5436_Straba Signal rechts", "#5526_Straba Signal anhalten", "#5524_Straba Signal A")
})

k1_r1_fg = AkRichtung:neu("R1 FG", -1, { AkAmpel:neu(86, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(89, Ak_Ampel_3er_XXX_FG) })
k1_r4_fg = AkRichtung:neu("R4 FG", -1, { AkAmpel:neu(92, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(26, Ak_Ampel_3er_XXX_FG) })
k1_r7_fg = AkRichtung:neu("R7 FG", -1, { AkAmpel:neu(80, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(81, Ak_Ampel_3er_XXX_FG) })
k1_r10_fg = AkRichtung:neu("R10 FG", -1, { AkAmpel:neu(84, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(94, Ak_Ampel_2er_FG) })
--endregion
--region K1-Schaltungen
do
    --- Kreuzung 1: Schaltung 1
    local k1_schaltung1 = AkKreuzungsSchaltung:neu("Schaltung 1")
    k1_schaltung1:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r1_fg)
    k1_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    local k1_schaltung1a = AkKreuzungsSchaltung:neu("Schaltung 1a")
    k1_schaltung1a:fuegeRichtungHinzu(k1_r1)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r3)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r6)
    k1_schaltung1a:fuegeRichtungHinzu(k1_r7)
    k1_schaltung1a:addRichtungMitAnforderung(k1_r8)
    k1_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k1_r7_fg)

    --- Kreuzung 1: Schaltung 2
    local k1_schaltung2 = AkKreuzungsSchaltung:neu("Schaltung 2")
    k1_schaltung2:fuegeRichtungHinzu(k1_r2)
    k1_schaltung2:addRichtungMitAnforderung(k1_r9)
    k1_schaltung2:fuegeRichtungHinzu(k1_r11)

    --- Kreuzung 1: Schaltung 3
    local k1_schaltung3 = AkKreuzungsSchaltung:neu("Schaltung 3")
    k1_schaltung3:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3:fuegeRichtungHinzu(k1_r5)
    k1_schaltung3:fuegeRichtungHinzu(k1_r6)

    local k1_schaltung3a = AkKreuzungsSchaltung:neu("Schaltung 3a")
    k1_schaltung3a:fuegeRichtungHinzu(k1_r4)
    k1_schaltung3a:fuegeRichtungHinzu(k1_r10)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r4_fg)
    k1_schaltung3a:fuegeRichtungFuerFussgaengerHinzu(k1_r10_fg)

    --- Kreuzung 1: Schaltung 4
    local k1_schaltung4 = AkKreuzungsSchaltung:neu("Schaltung 4")
    k1_schaltung4:fuegeRichtungHinzu(k1_r6)
    k1_schaltung4:fuegeRichtungHinzu(k1_r7)
    k1_schaltung4:addRichtungMitAnforderung(k1_r8)
    k1_schaltung4:fuegeRichtungHinzu(k1_r11)

    local k1_schaltung4a = AkKreuzungsSchaltung:neu("Schaltung 4a")
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
    AkAmpel:neu(103, Ak_Ampel_3er_XXX_FG),
})
k2_r2 = AkRichtung:neu("R2", 13, {
    AkAmpel:neu(104, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(105, Ak_Ampel_3er_XXX),
})
k2_r3 = AkRichtung:neu("R3/4", 14, {
    AkAmpel:neu(107, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(106, Ak_Ampel_3er_XXX),
    AkAmpel:neu(109, Ak_Ampel_3er_XXX_FG),
})
k2_r5 = AkRichtung:neu("R5", 15, {
    AkAmpel:neu(108, Ak_Ampel_Unsichtbar, "#5537_Straba Signal Halt", "#5538_Straba Signal links", "#5539_Straba Signal anhalten", "#5540_Straba Signal A"),
}):setFahrzeugMultiplikator(15)
k2_r6 = AkRichtung:neu("R6", 16, {
    AkAmpel:neu(110, Ak_Ampel_Unsichtbar, "#5535_Straba Signal Halt", "#5536_Straba Signal rechts", "#5534_Straba Signal anhalten", "#5533_Straba Signal A"),
}):setFahrzeugMultiplikator(15)
k2_r7 = AkRichtung:neu("R7", 17, {
    AkAmpel:neu(97, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(100, Ak_Ampel_3er_XXX),
})
k2_r8 = AkRichtung:neu("R8", 18, {
    AkAmpel:neu(98, Ak_Ampel_3er_XXX_FG),
    AkAmpel:neu(99, Ak_Ampel_3er_XXX),
})
k2_r1_fg = AkRichtung:neu("R1 FG", -1, { AkAmpel:neu(101, Ak_Ampel_2er_FG), AkAmpel:neu(102, Ak_Ampel_2er_FG) })
k2_r1a_fg = AkRichtung:neu("R1a FG", -1, { AkAmpel:neu(97, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(98, Ak_Ampel_3er_XXX_FG) })
k2_r1b_fg = AkRichtung:neu("R10 FG", -1, { AkAmpel:neu(107, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(109, Ak_Ampel_2er_FG) })
k2_r3_fg = AkRichtung:neu("R3 FG", -1, { AkAmpel:neu(103, Ak_Ampel_3er_XXX_FG), AkAmpel:neu(104, Ak_Ampel_3er_XXX_FG) })
k2_r7_fg = AkRichtung:neu("R7 FG", -1, { AkAmpel:neu(111, Ak_Ampel_2er_FG), AkAmpel:neu(112, Ak_Ampel_2er_FG) })
--endregion
--region K2-Schaltungen
do
    --- Kreuzung 2: Schaltung 1
    local k2_schaltung1 = AkKreuzungsSchaltung:neu("Schaltung 1")
    k2_schaltung1:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)
    k2_schaltung1:fuegeRichtungFuerFussgaengerHinzu(k2_r1b_fg)

    local k2_schaltung1a = AkKreuzungsSchaltung:neu("Schaltung 1a")
    k2_schaltung1a:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1a:fuegeRichtungHinzu(k2_r2)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1a:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    local k2_schaltung1b = AkKreuzungsSchaltung:neu("Schaltung 1b")
    k2_schaltung1b:fuegeRichtungHinzu(k2_r1)
    k2_schaltung1b:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)
    k2_schaltung1b:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    --- Kreuzung 2: Schaltung 2
    local k2_schaltung2 = AkKreuzungsSchaltung:neu("Schaltung 2")
    k2_schaltung2:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung2:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2:fuegeRichtungFuerFussgaengerHinzu(k2_r1a_fg)

    local k2_schaltung2a = AkKreuzungsSchaltung:neu("Schaltung 2a")
    k2_schaltung2a:fuegeRichtungHinzu(k2_r3)
    k2_schaltung2a:fuegeRichtungHinzu(k2_r7)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r3_fg)
    k2_schaltung2a:fuegeRichtungFuerFussgaengerHinzu(k2_r7_fg)

    --- Kreuzung 2: Schaltung 2a
    local k2_schaltung3 = AkKreuzungsSchaltung:neu("Schaltung 3")
    k2_schaltung3:fuegeRichtungHinzu(k2_r8)
    k2_schaltung3:fuegeRichtungHinzu(k2_r5) -- strab
    k2_schaltung3:fuegeRichtungHinzu(k2_r6) -- strab
    k2_schaltung3:fuegeRichtungFuerFussgaengerHinzu(k2_r1_fg)


    --- Kreuzung 2: Schaltung 2a
    local k2_schaltung3a = AkKreuzungsSchaltung:neu("Schaltung 3a")
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


function EEPMain()
    --print("Speicher: " .. collectgarbage("count"))
    AkSchaltungStart()
    AkPlaner:fuehreGeplanteAktionenAus()
    return 1
end
