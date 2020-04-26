require("ak.eep.AkEepFunktionen")
require("ak.anlagen.gruenberg-neustadt.Gruenberg-Neustadt-DR-main")

print("############## Gruenberg-Neutstadt-DR-test-Blockabfolge.lua ##############")
EEPTime = 0
i = -1
local trainName1 = "#DDR-Zug-1"
local trainName2 = "#DDR-Zug-2"

local function run()
    EEPTime = EEPTime + 20
    i = -1
    EEPMain()
    EEPTime = EEPTime + 20
    i = -1
    EEPMain()
end

-- Test fuer Haltesignale
EEPSetSignal(253, S.Fahrt)
EEPSetTrainRoute(trainName1, eepRoute.Pers_Frn_Kurz)

dbg.fs_pruefung = false
dbg.fs_schaltung = false
dbg.signal_aenderung = false

AkTrainControl.reset()

run();
B_BL1_1_WST(trainName1);
run()
assert(block1Gl1.trainName == trainName1)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == nil)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == nil)

run();
V_BL1_1_GBG_GL_2_WST(trainName1);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == nil)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == nil)

run();
B_BL1_1_WST(trainName2);
run()
assert(block1Gl1.trainName == trainName2)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == nil)

run();
V_BL1_1_GBG_GL_3_WST(trainName2);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == nil)

run();
B_GBG_GL_2_WST(trainName1);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName1)

run();
B_GBG_GL_3_WST(trainName2);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == trainName1)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName1)

run();
V_GBG_GL_X_WST(trainName1);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == nil)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName1)

run();
B_BL2_1_WST(trainName1);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == nil)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName1)

run();
block2Gl1:reset();
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == nil)
assert(gruenbergGleis3.trainName == trainName2)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName2)

run();
V_GBG_GL_X_WST(trainName2);
run()
assert(block1Gl1.trainName == nil)
assert(gruenbergGleis2.trainName == nil)
assert(gruenbergGleis3.trainName == nil)
assert(gruenbergGleis4.trainName == nil)
assert(block2Gl1.trainName == trainName2)

AkTrainControl.reset()

run();
B_BL3_2_OST(trainName2);
run()
assert(block3Gl2.trainName == trainName2)
assert(neustadtGleis2.trainName == nil)
assert(neustadtGleis3.trainName == trainName2)
assert(neustadtGleis4.trainName == nil)

run();
B_NST_GL_3_OST(trainName2);
run()
assert(block3Gl2.trainName == trainName2)
assert(neustadtGleis2.trainName == nil)
assert(neustadtGleis3.trainName == trainName2)
assert(neustadtGleis4.trainName == nil)

run();
V_BL3_2_NST_GL_3_OST(trainName2);
run()
assert(block3Gl2.trainName == nil)
assert(neustadtGleis2.trainName == nil)
assert(neustadtGleis3.trainName == trainName2)
assert(neustadtGleis4.trainName == nil)

print("Test bestanden!")
