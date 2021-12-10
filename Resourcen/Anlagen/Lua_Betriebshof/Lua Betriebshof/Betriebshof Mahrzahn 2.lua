
function Schattenbahnhof_sued()

	if EEPGetSignal(168)==1 then
	EEPSetSwitch(152,1)
	EEPSetSignal(168,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(169)==1 then
	EEPSetSwitch(153,1)
	EEPSetSignal(168,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(170)==1 then
	EEPSetSwitch(154,1)
	EEPSetSignal(168,2)
	EEPSetSignal(209,1)
	
	
	else EEPSetSignal(181,2)
	end
end