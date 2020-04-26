require("ak.eep.AkEepFunktionen")
require("ak.anlagen.gruenberg-neustadt.Gruenberg-Neustadt-DR-main")

print("############## Gruenberg-Neutstadt-DR-test-Haltesignale.lua ##############")
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

dbg.fs_pruefung = false
dbg.fs_schaltung = false
dbg.signal_aenderung = false

AkTrainControl.reset()

-- Test fuer Haltesignale
EEPSetSignal(253, S.Fahrt)
EEPSetSignal(118, S.Fahrt)
EEPSetTrainRoute(trainName1, eepRoute.Pers_Frn_Kurz)

run();
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
B_BL1_1_WST(trainName1);
run()
assert(S.Halt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
V_BL1_1_GBG_GL_2_WST(trainName1);
run()
assert(S.Halt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
B_GBG_GL_2_WST(trainName1)
assert(S.Halt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
V_GBG_GL_X_WST(trainName1);
run()
assert(S.Halt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

-- Test fuer Haltesignale
AkTrainControl.reset()

EEPSetSignal(253, S.Fahrt)
EEPSetSignal(118, S.Fahrt)
EEPSetTrainRoute(trainName1, eepRoute.Pers_Frn_Norm)

run();
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
B_BL1_1_WST(trainName1);
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

run();
V_BL1_1_GBG_GL_2_WST(trainName1);
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

run();
B_GBG_GL_2_WST(trainName1)
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
V_GBG_GL_X_WST(trainName1);
run()
assert(S.Halt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

-- Test fuer Haltesignale
AkTrainControl.reset()

EEPSetSignal(253, S.Halt)
EEPSetSignal(118, S.Halt)
EEPSetTrainRoute(trainName1, eepRoute.Guet_Frn_Norm)

run();
assert(S.Halt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

run();
B_BL1_1_WST(trainName1);
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
V_BL1_1_GBG_GL_2_WST(trainName1);
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
B_GBG_GL_2_WST(trainName1)
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))
run()
assert(S.Fahrt == EEPGetSignal(253))
assert(S.Fahrt == EEPGetSignal(118))

run();
V_GBG_GL_X_WST(trainName1);
run()
assert(S.Halt == EEPGetSignal(253))
assert(S.Halt == EEPGetSignal(118))

print("Test bestanden!")
