I=0
--local AkStatistik = require("ak.io.AkStatistik")


clearlog()
setmetatable(_ENV,{__index=function(s,k) local p=load(k);if p then local f=function(z) local s=Zugname;Zugname=z;p();Zugname=s end;_ENV[k]=f;return f end;return nil end})	
	require("Resourcen/Anlagen/Lua Betriebshof/Lua Betriebshof/Stadtbahntunnel")
	--require("Anlagen/Lua Betriebshof/Betriebshof Mahrzahn 1")
	--require("Anlagen/Lua Betriebshof/Ampel5")
	--require("Anlagen/Lua Betriebshof/Busbahnhof")
	require("Resourcen/Anlagen/Lua Betriebshof/Lua Betriebshof/Hallentore")
	--require("SpDrS60_Lib_RL2")
	require("Resourcen/Anlagen/Lua Betriebshof/Lua Betriebshof/Dasy_DL1")
	--require("Resourcen/Anlagen/Lua Betriebshof/Lua Betriebshof/LZA_Tram")



--used_Timer_SpDr = {{"Timer_Tor",45}}


--SpDrS60_Init()



function EEPMain()
	
	--SpDr_DtcRun()
	klick =1
	--Kreuzung_Main(klick)
	Hallentor_Main(klick)
	cycle = 1	
	I=I+1
    return 1
end

