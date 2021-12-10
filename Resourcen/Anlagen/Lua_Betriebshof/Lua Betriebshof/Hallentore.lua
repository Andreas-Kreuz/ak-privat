I=0


ZaehlerHallentor12 = 0
ZaehlerHallentor11 = 0
ZaehlerHallentor10 = 0
ZaehlerHallentor9 = 0
ZaehlerHallentor8 = 0
ZaehlerHallentor7 = 0
--ZaehlerHallentor6 = 0
--ZaehlerHallentor5 = 0
--ZaehlerHallentor4 = 0
ZaehlerHallentor3 = 0
ZaehlerHallentor2 = 0
ZaehlerHallentor1 = 0


function Hallentor_Main(arg)
    
	
    Hallentor12(arg)
    Hallentor11(arg)
	Hallentor10(arg)
    Hallentor9 (arg)
	Hallentor8 (arg)
	Hallentor7 (arg)
	--Hallentor6 (arg)
	--Hallentor5 (arg)
	--Hallentor4 (arg)
	Hallentor3 (arg)
	Hallentor2 (arg)
	Hallentor1 (arg)
	
end
	
function Hallentor12(arg)
	  	
	ZaehlerHallentor12 = ZaehlerHallentor12 + arg
  	local count = ZaehlerHallentor12	

  --print("---- count Hallentor12 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(668)
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2314_Straba Signal A", 0 )
		EEPStructureSetLight("#2316_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2315_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#507_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor12 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2314_Straba Signal A", 1 );
		EEPStructureSetLight("#2316_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2315_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(679)
		if Einfahrt == 1 then 
		ZaehlerHallentor12 = 4
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2314_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2316_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2315_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#507_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor12 = 112
			elseif Anmeldung == 2 then
			ZaehlerHallentor12 = 1
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1827_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#507_Falttor_IM_Tram_01_DL1","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1827_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2314_Straba Signal A", 0 )
		EEPStructureSetLight("#2316_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2315_Straba Signal geradeaus", 1 )
		EEPSetSignal(668,1)
		EEPSetSignal(13,2)
		EEPSetSignal(25,1)
    elseif count== 70 then
		Blockade = EEPGetSignal(13)
		if Blockade == 2 then 
		ZaehlerHallentor12 = 68
		elseif Blockade == 1 then 
		ZaehlerHallentor12 = 71
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1827_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2314_Straba Signal A", 0 )
		EEPStructureSetLight("#2316_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2315_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#507_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1827_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor12 = 0 end;
    
end
function Hallentor11(arg)
	  	
	ZaehlerHallentor11 = ZaehlerHallentor11 + arg
  	local count = ZaehlerHallentor11	

  --print("---- count Hallentor11 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(699)
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2338_Straba Signal A", 0 )
		EEPStructureSetLight("#2357_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2368_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#508_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor11 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2338_Straba Signal A", 1 );
		EEPStructureSetLight("#2357_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2368_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(716)
		if Einfahrt == 1 then 
		ZaehlerHallentor11 = 4
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2338_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2357_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2368_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#508_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor11 = 110
			elseif Anmeldung == 2 then
			ZaehlerHallentor11 = 1
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#508_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2338_Straba Signal A", 0 )
		EEPStructureSetLight("#2357_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2368_Straba Signal geradeaus", 1 )
		EEPSetSignal(699,1)
		EEPSetSignal(680,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(680)
		if Blockade == 2 then 
		ZaehlerHallentor11 = 68
		elseif Blockade == 1 then 
		ZaehlerHallentor11 = 71
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2338_Straba Signal A", 0 )
		EEPStructureSetLight("#2357_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2368_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#508_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1828_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor11 = 0 end;
    
end
function Hallentor10(arg)
	  	
	ZaehlerHallentor10 = ZaehlerHallentor10 + arg
  	local count = ZaehlerHallentor10	

  --print("---- count Hallentor10 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(704)
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2339_Straba Signal A", 0 )
		EEPStructureSetLight("#2358_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2369_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#35_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor10 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2339_Straba Signal A", 1 );
		EEPStructureSetLight("#2358_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2369_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(717)
		if Einfahrt == 1 then 
		ZaehlerHallentor10 = 4
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2339_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2358_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2369_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#35_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor10 = 110
			elseif Anmeldung == 2 then
			ZaehlerHallentor10 = 1
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#35_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2339_Straba Signal A", 0 )
		EEPStructureSetLight("#2358_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2369_Straba Signal geradeaus", 1 )
		EEPSetSignal(704,1)
		EEPSetSignal(681,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(681)
		if Blockade == 2 then 
		ZaehlerHallentor10 = 68
		elseif Blockade == 1 then 
		ZaehlerHallentor10 = 71
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2339_Straba Signal A", 0 )
		EEPStructureSetLight("#2358_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2369_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#35_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1829_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor10 = 0 end;
    
end
function Hallentor9(arg)
	  	
	ZaehlerHallentor9 = ZaehlerHallentor9 + arg
  	local count = ZaehlerHallentor9	

  --print("---- count Hallentor9 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(705) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2340_Straba Signal A", 0 )
		EEPStructureSetLight("#2359_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2370_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#509_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor9 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2340_Straba Signal A", 1 );
		EEPStructureSetLight("#2359_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2370_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(718) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor9 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2340_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2359_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2370_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#509_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor9 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor9 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#509_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2340_Straba Signal A", 0 )
		EEPStructureSetLight("#2359_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2370_Straba Signal geradeaus", 1 )
		EEPSetSignal(705,1)
		EEPSetSignal(682,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(682)
		if Blockade == 2 then 
		ZaehlerHallentor9 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor9 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2340_Straba Signal A", 0 )
		EEPStructureSetLight("#2359_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2370_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#509_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1830_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor9 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end
function Hallentor8(arg)
	  	
	ZaehlerHallentor8 = ZaehlerHallentor8 + arg
  	local count = ZaehlerHallentor8	

  --print("---- count Hallentor8 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(706) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2341_Straba Signal A", 0 )
		EEPStructureSetLight("#2360_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2371_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#510_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor8 = 112					----  <<<< Zähler andern <<<< -----
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2341_Straba Signal A", 1 );
		EEPStructureSetLight("#2360_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2371_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(719) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor8 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2341_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2360_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2371_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#510_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor8 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor8 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#510_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2341_Straba Signal A", 0 )
		EEPStructureSetLight("#2360_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2371_Straba Signal geradeaus", 1 )
		EEPSetSignal(706,1)
		EEPSetSignal(683,2)

    elseif count== 70 then
		Blockade = EEPGetSignal(683)
		if Blockade == 2 then 
		ZaehlerHallentor8 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor8 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2341_Straba Signal A", 0 )
		EEPStructureSetLight("#2360_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2371_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#510_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1831_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor8 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end
function Hallentor7(arg)
	  	
	ZaehlerHallentor7 = ZaehlerHallentor7 + arg
  	local count = ZaehlerHallentor7	

  --print("---- count Hallentor7 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(707) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2342_Straba Signal A", 0 )
		EEPStructureSetLight("#2361_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2372_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#117_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor7 = 112					----  <<<< Zähler andern <<<< -----
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2342_Straba Signal A", 1 );
		EEPStructureSetLight("#2361_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2372_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(720) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor7 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2342_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2361_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2372_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#117_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor7 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor7 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1833_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#117_Falttor_IM_Tram_01_DL1","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1833_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2342_Straba Signal A", 0 )
		EEPStructureSetLight("#2361_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2372_Straba Signal geradeaus", 1 )
		EEPSetSignal(707,1)
		EEPSetSignal(686,2)

    elseif count== 70 then
		Blockade = EEPGetSignal(686)
		if Blockade == 2 then 
		ZaehlerHallentor7 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor7 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1833_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2342_Straba Signal A", 0 )
		EEPStructureSetLight("#2361_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2372_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#117_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1833_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1832_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor7 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end
function Hallentor3(arg)
	  	
	ZaehlerHallentor3 = ZaehlerHallentor3 + arg
  	local count = ZaehlerHallentor3	

  --print("---- count Hallentor3 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(713) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2346_Straba Signal A", 0 )
		EEPStructureSetLight("#2365_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2376_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#1634_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor3 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2346_Straba Signal A", 1 );
		EEPStructureSetLight("#2365_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2376_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(724) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor3 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2346_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2365_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2376_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#1634_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor3 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor3 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1836_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#1634_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1836_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2346_Straba Signal A", 0 )
		EEPStructureSetLight("#2365_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2376_Straba Signal geradeaus", 1 )
		EEPSetSignal(713,1)
		EEPSetSignal(693,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(693)
		if Blockade == 2 then 
		ZaehlerHallentor3 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor3 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1836_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2346_Straba Signal A", 0 )
		EEPStructureSetLight("#2365_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2376_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#1634_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1836_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor3 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end
function Hallentor2(arg)
	  	
	ZaehlerHallentor2 = ZaehlerHallentor2 + arg
  	local count = ZaehlerHallentor2	

  --print("---- count Hallentor2 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(725) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2347_Straba Signal A", 0 )
		EEPStructureSetLight("#2366_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2377_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#1635_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor2 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2347_Straba Signal A", 1 );
		EEPStructureSetLight("#2366_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2377_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(714) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor2 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2347_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2366_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2377_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#1635_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor2 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor2 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#1635_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2347_Straba Signal A", 0 )
		EEPStructureSetLight("#2366_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2377_Straba Signal geradeaus", 1 )
		EEPSetSignal(725,1)
		EEPSetSignal(694,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(694)
		if Blockade == 2 then 
		ZaehlerHallentor2 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor2 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2347_Straba Signal A", 0 )
		EEPStructureSetLight("#2366_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2377_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#1635_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1837_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor2 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end
function Hallentor1(arg)
	  	
	ZaehlerHallentor1 = ZaehlerHallentor1 + arg
  	local count = ZaehlerHallentor1	

  --print("---- count Hallentor1 ---------",count) 
	--print("Startus-------",EEPIsTramTrackReserved(232,false))
  
    if count == 1 then	
       Anmeldung = EEPGetSignal(715) 			----Erster Lichtpunkt----
	   if Anmeldung == 1 then
		EEPStructureSetLight("#2348_Straba Signal A", 0 )
		EEPStructureSetLight("#2367_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2378_Straba Signal geradeaus", 0 )
		EEPStructureAnimateAxis("#1640_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
		ZaehlerHallentor1 = 112
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#2348_Straba Signal A", 1 );
		EEPStructureSetLight("#2367_Straba Signal Halt", 1 );
		EEPStructureSetLight("#2378_Straba Signal geradeaus", 0 )
		end
	elseif count==3 then
		Einfahrt = EEPGetSignal(726) 			---- Zweiter Lichtpunkt ----
		if Einfahrt == 1 then 
		ZaehlerHallentor1 = 4					----  <<<< Zähler andern <<<< -----
		elseif Einfahrt == 2 then 
		EEPStructureSetLight("#2348_Straba Signal A", 1 )
			if Anmeldung == 1 then
			EEPStructureSetLight("#2367_Straba Signal Halt", 1 )
			EEPStructureSetLight("#2378_Straba Signal geradeaus", 0 )
			EEPStructureAnimateAxis("#1640_Falttor_IM_Tram_01_DL1","Antrieb",-1000)
			ZaehlerHallentor1 = 110				----  <<<< Zähler andern <<<< -----
			elseif Anmeldung == 2 then
			ZaehlerHallentor1 = 3				----  <<<< Zähler andern <<<< -----
			end
		end
	elseif count==5 then
		EEPStructureAnimateAxis("#1839_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
	elseif count==10 then 
		EEPStructureAnimateAxis("#1640_Falttor_IM_Tram_01_DL1)","Antrieb",1000)
	elseif count==60 then
		EEPStructureAnimateAxis("#1839_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureSetLight("#2348_Straba Signal A", 0 )
		EEPStructureSetLight("#2367_Straba Signal Halt", 0 )
		EEPStructureSetLight("#2378_Straba Signal geradeaus", 1 )
		EEPSetSignal(715,1)
		EEPSetSignal(695,2)
    elseif count== 70 then
		Blockade = EEPGetSignal(695)
		if Blockade == 2 then 
		ZaehlerHallentor1 = 68				----  <<<< Zähler andern <<<< -----
		elseif Blockade == 1 then 
		ZaehlerHallentor1 = 71				----  <<<< Zähler andern <<<< -----
		end
	elseif count==75 then  
		EEPStructureAnimateAxis("#1839_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",1000)
		EEPStructureSetLight("#2348_Straba Signal A", 0 )
		EEPStructureSetLight("#2367_Straba Signal Halt", 1 )
		EEPStructureSetLight("#2378_Straba Signal geradeaus", 0 )
	elseif count==85 then	
		EEPStructureAnimateAxis("#1640_Falttor_IM_Tram_01_DL1)","Antrieb",-1000)
    elseif count==110 then
		EEPStructureAnimateAxis("#1839_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)
		EEPStructureAnimateAxis("#1838_Rundumleuchte-Orange-2-PB1","Rundumlicht",-1000)

    end
  
    if count > 112 then ZaehlerHallentor1 = 0 end;		----  <<<< Zähler andern <<<< -----
    
end