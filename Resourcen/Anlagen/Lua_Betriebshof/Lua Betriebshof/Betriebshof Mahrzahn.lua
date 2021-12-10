I=0
clearlog()
	require("SpDrS60_Lib_RL2")
	require("Anlagen/Lua Betriebshof/Betriebshof Mahrzahn 1")
	require("Anlagen/Lua Betriebshof/Ampel5")
	require("Anlagen/Lua Betriebshof/Betriebshof Mahrzahn Pullt")
	require("Anlagen/Lua Betriebshof/Hallentor")
	require("Anlagen/Lua Betriebshof/Busbahnhof")




function EEPMain()
	klick =1
Kreuzung_Main(klick)
	

	checkTramTrack()
	SpDr_DtcRun() 

    return 1
end

