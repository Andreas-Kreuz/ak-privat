require 'ak.modellpacker.AkModellInstallerHilfe'
local aktuellerOrdner = ".."
if arg and arg[1] then
    aktuellerOrdner = arg[1]
end
print("Suche Installationsdateien in Verzeichnis \"" .. aktuellerOrdner .. "\"")

-----------------------------------------
-- Paket: Skripte von Andreas Kreuz
-----------------------------------------
local paket0 = AkModellPaket:neu(14, "Skriptsammlung von Andreas Kreuz", "Diverse Lua-Skripte")
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\eep", { "README.md" })
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\eisenbahn", { "README.md" })
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\planer", { "README.md" })
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\speicher", { "README.md" })
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\strasse", { "README.md" })
paket0:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\text", { "README.md" })

do
    local paket1 = AkModellPaket:neu(14, "Anlage: Andreas Kreuz - Die Moderne", "Eine Anlage, die in der heutigen Zeit angesiedelt ist. Dokumentation für Strassenverkehr enthalten. Erfordert Skriptsammlung.")
    paket1:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\anlagen\\die-moderne", { "README.md" })
    paket1:fuegeDateienHinzu(aktuellerOrdner .. "\\..\\ak-privat", "", "Resourcen\\Anlagen\\die-moderne", { ".dds", "README.md" })
    paket1:fuegeDateienHinzu(aktuellerOrdner .. "\\..\\ak-privat", "", "Resourcen\\Doc\\die-moderne", { ".dds", "README.md" })

    print(paket0.deutscherName)
    print(paket1.deutscherName)

    local installer = AkModellInstaller:neu("Andreas_Kreuz-Die_Moderne")
    installer:fuegeModellPaketHinzu(paket0)
    installer:fuegeModellPaketHinzu(paket1)
    installer:erzeugePaket(aktuellerOrdner .. "\\modell-pakete")
end

-----------------------------------------
-- Paket: Anlage die Moderne
-----------------------------------------
do
    local paket1 = AkModellPaket:neu(14, "Anlage: Andreas Kreuz - Gruenberg-Neustadt", "Eine Anlage, die in der Zeit der DDR angesiedelt ist. Erfordert Skriptsammlung.")
    paket1:fuegeDateienHinzu(aktuellerOrdner, "", "LUA\\ak\\anlagen\\gruenberg-neustadt", { "README.md" })
    paket1:fuegeDateienHinzu(aktuellerOrdner .. "\\..\\ak-privat", "", "Resourcen\\Anlagen\\gruenberg-neustadt", { ".dds", "README.md" })
    --paket1:fuegeDateienHinzu(aktuellerOrdner .. "\\..\\ak-privat", "", "Resourcen\\Doc\\gruenberg-neustadt", { ".docx", ".dds", "README.md" })

    print(paket0.deutscherName)
    print(paket1.deutscherName)

    local installer = AkModellInstaller:neu("Andreas_Kreuz-Gruenberg_Neustadt")
    installer:fuegeModellPaketHinzu(paket0)
    installer:fuegeModellPaketHinzu(paket1)
    installer:erzeugePaket(aktuellerOrdner .. "\\modell-pakete")
end