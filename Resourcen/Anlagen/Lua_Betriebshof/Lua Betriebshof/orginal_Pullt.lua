clearlog()


require("SpDrS60_Lib_RL2");
ConvertString = {{"#TramLinz_001","7001"},{"#TramLinz_002","7002"},{"#TramLinz_003","7003"},{"#TramLinz_004","7004"},{"#TramLinz_005","7005"},{"#TramLinz_006","7006"},{"#TramLinz_007","7007"},{"#TramLinz_008","7008"},{"#TramLinz_009","7009"},{"#TramLinz_010","7010"},{"#TramLinz_011","7011"},{"#TramLinz_012","7012"},{"#TramLinz_013","7013"},{"#TramLinz_014","7014"},{"#TramLinz_015","7015"},{"#TramLinz_016","7016"},{"#TramLinz_017","7017"},{"#TramLinz_018","7018"},{"#TramLinz_019","7019"},{"#TramLinz_020","7020"},{"#TramLinz_021","7021"},{"#TramLinz_022","7022"},{"#TramLinz_023","7023"},{"#TramLinz_024","7024"},{"#TramLinz_025","7025"},{"#TramLinz_026","7026"},{"#TramLinz_027","7027"},{"#TramLinz_028","7028"},{"#TramLinz_029","7029"},{"#TramLinz_030","7030"},{"#TramLinz_031","7031"},{"#TramLinz_032","7032"},{"#TramLinz_033","7033"},{"#TramLinz_034","7034"},{"#TramLinz_035","7035"},{"#TramLinz_036","7036"},{"#TramLinz_037","7037"},{"#TramLinz_038","7038"},{"#TramLinz_039","7039"},{"#TramLinz_040","7040"},{"#TramLinz_041","7041"},{"#TramLinz_042","7042"},{"#TramLinz_043","7043"},{"#TramLinz_044","7044"},{"#TramLinz_045","7045"},{"#TramLinz_046","7046"},{"#TramLinz_047","7047"},{"#TramLinz_048","7048"},{"#TramLinz_049","7049"},{"#TramLinz_050","7050"}}

usedSwitchs_SpDr = {{345,766,773},{344,763,772},{066,805,803},{062,919,886}}
used_Displays_14SegDig_SpDr = {{782,781,783,777,776,775,778,780,779,774},
{908,909,910,911,912,913,914,915,916,917},
{931,930,929,928,927,926,925,924,923,922},
{897,898,899,900,906,907,947,948,949,950,951,952,953,954}}

used_Signals_SpDr = {{936,335,980}}



 used_Signals_SpDr = {
 { SigId = 980, SigChar = SignalUnsichtbar, HpDtcId = 936,  HpBtnId = 935},

}




SpDrS60_Init(1)



function EEPMain()


	SpDr_DtcRun() 

    return 1
end

function_Zugziehl
	if EEPSetTrainRoute("#Personenzug", "Route") then 
	--zugzeilanzeige 	
	elseif

