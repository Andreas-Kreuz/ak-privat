I=0
clearlog()

function EEPMain()
	
	
	

    return 1
end

EEPRegisterSignal(1018)
EEPRegisterSignal(1019)
EEPRegisterSignal(1020)
EEPRegisterSignal(1021)




--Hallengleis 12--
function EEPOnSignal_1018 (Startus)
	if (Startus==2) then
	--Achste Hallle												Gelbes binklicht 		unteres pett        Rrotes blinlicht --
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor4", 100 );EEPSetSignal(3403,3);EEPSetSignal(1012,2);EEPSetSignal(3404,1)
	else
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor4", -100 );EEPSetSignal(3403,1);EEPSetSignal(1012,1);EEPSetSignal(3404,2)
	end
end	

--Hallengleis 11--
function EEPOnSignal_1019 (Startus)
	if (Startus==2) then
	--Achste Hallle												Gelbes binklicht 		unteres pett        Rotes blinlicht --
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor3", 100 );EEPSetSignal(3407,3);EEPSetSignal(1013,2);EEPSetSignal(3418,1)
	else
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor3", -100 );EEPSetSignal(3407,1);EEPSetSignal(1013,1);EEPSetSignal(3418,2)
	end
end	

--Hallengleis 10--
function EEPOnSignal_1020 (Startus)
	if (Startus==2) then
	--Achste Hallle												Gelbes binklicht 		unteres pett        Rotes blinlicht --
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor2", 100 );EEPSetSignal(3408,3);EEPSetSignal(1014,2);EEPSetSignal(3419,1)
	else
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor2", -100 );EEPSetSignal(3408,1);EEPSetSignal(1014,1);EEPSetSignal(3419,2)
	end
end	

--Hallengleis 09--
function EEPOnSignal_1021 (Startus)
	if (Startus==2) then
	--Achste Hallle												Gelbes binklicht 		unteres pett        Rotes blinlicht --
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor1", 100 );EEPSetSignal(3409,3);EEPSetSignal(1015,2);EEPSetSignal(3420,1)
	else
	EEPStructureAnimateAxis("#35_TramDepot_Teil1","Tor1", -100 );EEPSetSignal(3409,1);EEPSetSignal(1015,1);EEPSetSignal(3420,2)
	end
end	