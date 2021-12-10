clearlog()
require("SpDrS60_Lib_RL2");
--Weichen_ID/Symbol/Taster--
--usedSwitchs_SpDr = {{905,914,921},{906,547,923},{823,548,922},{829,910,924},{828,912,927},{827,541,926},
--{830,932,944},{831,933,946},{811,930,943},{816,931,945},{909,957,992},{221,977,993},{81,985,994},
--{222,955,995},{182,956,1000},{652,987,1001},{141,978,996}




--}



for i=1,9999999 do 
	EEPRegisterTramTrack(i)
end	
function checkTramTrack()    
    for k,v in pairs(used_TramTrackDtcSets_SpDr) do
      local taken = false;
        for ki,vi in pairs(v.TrkId) do
          local hit,check=EEPIsTramTrackReserved(vi); --print(vi)
          if check then taken = true break end;   
        end;  
     
        for kj,vj in pairs(v.DtcId) do          
          if taken then
            EEPSetSignal(vj,3) 
            else        
            EEPSetSignal(vj,1) 
            end
        end
    end        
end
SpDrS60_Init(1)
function EEPMain()

	
	SpDr_DtcRun() 
	
    return 1
end
