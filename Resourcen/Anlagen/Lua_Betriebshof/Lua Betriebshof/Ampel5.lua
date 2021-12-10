I=0


ZaehlerKreuzung1 = 0
ZaehlerKreuzung2 = 0
ZaehlerKreuzung3 = 0
ZaehlerKreuzung4 = 0

function Kreuzung_Main(arg)
    
    

    Kreuzung1(arg)
    Kreuzung2(arg)
	Kreuzung3(arg)
	Kreuzung4(arg)
    
	
	
end
	
function Kreuzung1(arg)
	  	
	ZaehlerKreuzung1 = ZaehlerKreuzung1 + arg
  	local count = ZaehlerKreuzung1	

  --print("---- count Kreuzung 1 ---------",count)  
  
    if count == 1 then	
        EEPSetSignal(599,1);EEPSetSignal(708,1);EEPSetSignal(707,1);EEPSetSignal(601,1)
      elseif count==5 then 
        EEPSetSignal(599,2);EEPSetSignal(708,2);EEPSetSignal(707,2);EEPSetSignal(601,2)EEPSetSignal(711,2)	
      elseif count==10 then 
        EEPSetSignal(599,3);EEPSetSignal(708,3);EEPSetSignal(707,3);EEPSetSignal(601,3)
      elseif count==65 then 
        EEPSetSignal(599,5);EEPSetSignal(708,5);EEPSetSignal(707,5);EEPSetSignal(601,5);EEPSetSignal(711,3)
      elseif count==70 then 
        EEPSetSignal(599,1);EEPSetSignal(708,1);EEPSetSignal(707,1);EEPSetSignal(601,1);EEPSetSignal(711,1)
      elseif count==77 then 
        EEPSetSignal(709,1);EEPSetSignal(710,1)
      elseif count==75 then 
        EEPSetSignal(599,1);EEPSetSignal(708,1);EEPSetSignal(707,1);EEPSetSignal(601,1)	
      elseif count==72 then	
        EEPSetSignal(601,6);EEPSetSignal(599,6)
      elseif count==75 then 
        EEPSetSignal(709,2);EEPSetSignal(710,2);EEPSetSignal(713,2);EEPSetSignal(712,2)
      elseif count==80 then --
        EEPSetSignal(709,3);EEPSetSignal(710,3)
      elseif count==110 then
        EEPSetSignal(709,4);EEPSetSignal(710,4);EEPSetSignal(601,1);EEPSetSignal(599,1)
      elseif count==120 then
        EEPSetSignal(709,5);EEPSetSignal(710,5)
      elseif count==130 then
        EEPSetSignal(709,1);EEPSetSignal(710,1);EEPSetSignal(713,1);EEPSetSignal(712,1)

      elseif count== 132 then
        EEPSetSignal(709,6);EEPSetSignal(710,6)
    end
  
    if count > 132 then ZaehlerKreuzung1 = 0 end;
    
end

function Kreuzung2(arg)
  
  ZaehlerKreuzung2 = ZaehlerKreuzung2 + arg
  local count = ZaehlerKreuzung2	

--print("---- count Kreuzung 2 ---------",count) 
  
	if count==1 then
	EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)
elseif count==5 then
	EEPSetSignal(739,2);EEPSetSignal(741,2);EEPSetSignal(740,2);EEPSetSignal(738,2)
elseif count==10 then 
	EEPSetSignal(739,3);EEPSetSignal(741,3);EEPSetSignal(740,3);EEPSetSignal(738,3)
elseif count==45 then	
	EEPSetSignal(739,4);EEPSetSignal(741,4);EEPSetSignal(740,4);EEPSetSignal(738,4)
elseif count==55 then
	EEPSetSignal(739,5);EEPSetSignal(741,5);EEPSetSignal(740,5);EEPSetSignal(738,5)
elseif count==60 then	
	EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)
elseif count==65 then
	EEPSetSignal(732,1);EEPSetSignal(731,1);EEPSetSignal(730,1);EEPSetSignal(729,1);EEPStructureSetLight("#525_Straba Signal Halt", 0 );EEPStructureSetLight("#524_Straba Signal geradeaus", 1 )
elseif count==70 then
	EEPSetSignal(732,2);EEPSetSignal(731,2);EEPSetSignal(730,2);EEPSetSignal(729,2)
elseif count==75 then
	EEPSetSignal(732,3);EEPSetSignal(731,3);EEPSetSignal(730,3);EEPSetSignal(729,3)
elseif count==110 then
	EEPSetSignal(732,4);EEPSetSignal(731,4);EEPSetSignal(730,4);EEPSetSignal(729,4);EEPStructureSetLight("#524_Straba Signal geradeaus", 0 );EEPStructureSetLight("#523_Straba Signal anhalten", 1 )
elseif count==115 then
	EEPSetSignal(732,5);EEPSetSignal(731,5);EEPSetSignal(730,5);EEPSetSignal(729,5)
elseif count==120 then
	EEPSetSignal(732,1);EEPSetSignal(731,1);EEPSetSignal(730,1);EEPSetSignal(729,1);EEPStructureSetLight("#523_Straba Signal anhalten", 0 );EEPStructureSetLight("#525_Straba Signal Halt", 1 )

   
	
  end
  
  if count > 235 then ZaehlerKreuzung2 = 0 end;
  
end

function Kreuzung3(arg)--
	  	
	ZaehlerKreuzung3 = ZaehlerKreuzung3 + arg
  	local count = ZaehlerKreuzung3	

  --print("---- count Kreuzung 3 ---------",count)  
  
    if count == 1 then
        EEPSetSignal(715,1);EEPSetSignal(716,3)
		
	elseif count==5 then
		EEPSetSignal(715,2)
	elseif count==10 then
        EEPSetSignal(715,3)
	elseif count==45 then
        EEPSetSignal(716,2)
    elseif count==50 then
        EEPSetSignal(715,4);EEPSetSignal(716,1)
  
    end
  
    if count > 132 then ZaehlerKreuzung3 = 0 end;
    
end

function Kreuzung4(arg)--
	  	
	ZaehlerKreuzung4 = ZaehlerKreuzung4 + arg
  	local count = ZaehlerKreuzung4	
	
	

 -- print("---- count Kreuzung 4 ---------",count)  
  
    if count == 1 then
        EEPSetSignal(2289,2);EEPSetSignal(2290,2)
		Anmeldung = EEPGetSignal(2296)
		if Anmeldung == 1 then
		EEPStructureSetLight("#551_Straba Signal T", 1 )
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#551_Straba Signal T", 0 )
		end
		

	elseif count==5 then
		EEPSetSignal(2289,3);EEPSetSignal(2290,3)
		Anmeldung = EEPGetSignal(2296)
		if Anmeldung == 1 then
		EEPStructureSetLight("#551_Straba Signal T", 1 )
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#551_Straba Signal T", 0 )
		end
		
	elseif count==10 then
        EEPSetSignal(2289,4);EEPSetSignal(2290,4)
	elseif count==45 then
        EEPSetSignal(2289,5);EEPSetSignal(2290,5)
    elseif count==50 then
        EEPSetSignal(2289,2);EEPSetSignal(2290,2)
	elseif count==55 then  --Anmeldung Abzweig
			Anmeldung = EEPGetSignal(2296)
			if Anmeldung == 1 then
			elseif Anmeldung == 2 then
			EEPStructureSetLight("#551_Straba Signal T", 0 )
			ZaehlerKreuzung4 = 89  
			end
	elseif count==56 then
		EEPStructureSetLight("#537_Straba Signal Halt", 0 );EEPStructureSetLight("#536_Straba Signal rechts", 1 );EEPSetSignal(2308,1);EEPStructureSetLight("#551_Straba Signal T", 0 )
	elseif count==70 then	
		EEPStructureSetLight("#536_Straba Signal rechts", 0 );EEPStructureSetLight("#540_Straba Signal anhalten", 1 )EEPSetSignal(2308,2)
	elseif count==80 then	
		EEPStructureSetLight("#540_Straba Signal anhalten", 0 );EEPStructureSetLight("#537_Straba Signal Halt", 1 )
			Anmeldung = EEPGetSignal(2296)
			if Anmeldung == 1 then
			EEPStructureSetLight("#551_Straba Signal T", 1 )
			elseif Anmeldung == 2 then
			end

	elseif count==90 then 
			Anmeldung = EEPGetSignal(2295)
			if Anmeldung == 1 then
			elseif Anmeldung == 2 then
			ZaehlerKreuzung4 = 120  
			
			end
	elseif count==91 then
		EEPStructureSetLight("#538_Straba Signal Halt", 0 );EEPStructureSetLight("#539_Straba Signal geradeaus", 1 );EEPSetSignal(2308,1);EEPStructureSetLight("#552_Straba Signal T", 0 )
	elseif count==115 then	
		EEPStructureSetLight("#539_Straba Signal geradeaus", 0 );EEPStructureSetLight("#541_Straba Signal anhalten", 1 );EEPSetSignal(2308,2)
	elseif count==119 then	
		EEPStructureSetLight("#541_Straba Signal anhalten", 0 );EEPStructureSetLight("#538_Straba Signal Halt", 1 )
		Anmeldung = EEPGetSignal(2295)
		if Anmeldung == 1 then
		EEPStructureSetLight("#552_Straba Signal T", 1 )
		elseif Anmeldung == 2 then
		end  
	elseif count==121 then	
		Anmeldung = EEPGetSignal(2293)
		if Anmeldung == 1 then
		elseif Anmeldung == 2 then
		EEPStructureSetLight("#554_Straba Signal T", 0 )
		ZaehlerKreuzung4 = 160
		end
	elseif count==122 then
		EEPStructureSetLight("#545_Straba Signal Halt", 0 );EEPStructureSetLight("#548_Straba Signal links", 1 );EEPSetSignal(2333,1);EEPStructureSetLight("#554_Straba Signal T", 0 )
	elseif count==150 then	
		EEPStructureSetLight("#548_Straba Signal links", 0 );EEPStructureSetLight("#550_Straba Signal anhalten", 1 );EEPSetSignal(2333,2)		
	elseif count==159 then	
		EEPStructureSetLight("#550_Straba Signal anhalten", 0 );EEPStructureSetLight("#545_Straba Signal Halt", 1 )
		Anmeldung = EEPGetSignal(2293)
		if Anmeldung == 1 then
		EEPStructureSetLight("#554_Straba Signal T", 1 )
		elseif Anmeldung == 2 then
		end  
	
	
    end
  
    if count > 161 then ZaehlerKreuzung4 = 0 end;
    
end

-- function Kreuzung4(arg)--
	  	
	-- ZaehlerKreuzung4 = ZaehlerKreuzung4 + arg
  	-- local count = ZaehlerKreuzung4	
	
	

  -- print("---- count Kreuzung 4 ---------",count)  
  
    -- if count == 1 then
		-- Anmeldung = EEPGetSignal(2296)
		-- if Anmeldung == 1 then
		-- EEPStructureSetLight("#551_Straba Signal T", 1 )
		-- elseif Anmeldung == 2 then
		-- EEPStructureSetLight("#551_Straba Signal T", 0 )
		-- end
		-- Anmeldung = EEPGetSignal(2295)
		-- if Anmeldung == 1 then
		-- EEPStructureSetLight("#551_Straba Signal T", 1 )
		-- elseif Anmeldung == 2 then
		-- EEPStructureSetLight("#551_Straba Signal T", 0 )
		-- end
	-- elseif count==2 then	
		-- EEPSetSignal(2289,2)