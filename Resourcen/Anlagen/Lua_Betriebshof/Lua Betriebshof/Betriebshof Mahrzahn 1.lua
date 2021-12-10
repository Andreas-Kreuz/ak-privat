
function Einfaht_Schattenbahnhof_Nord()
	
	--Gleis 1
	if EEPGetSignal(117)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,1)
	EEPSetSignal(117,2)
	EEPSetSignal(116,2)
	
	--Gleis 2
	elseif EEPGetSignal(118)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,1)
	EEPSetSignal(118,2)
	EEPSetSignal(116,2)
	
	--Gleis 3
	elseif EEPGetSignal(119)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,1)
	EEPSetSignal(119,2)
	EEPSetSignal(116,2)
	
	--Gleis4
	elseif EEPGetSignal(120)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,2)
	EEPSetSwitch(90,1)
	EEPSetSignal(120,2)
	EEPSetSignal(116,2)
	
	--Gleis5
	elseif EEPGetSignal(121)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,2)
	EEPSetSwitch(90,2)
	EEPSetSwitch(91,1)
	EEPSetSignal(121,2)
	EEPSetSignal(116,2)
	
	--Gleis6
	elseif EEPGetSignal(128)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,2)
	EEPSetSwitch(90,2)
	EEPSetSwitch(91,2)
	EEPSetSwitch(92,2)
	EEPSetSignal(128,2)
	EEPSetSignal(116,2)
	
	--Gleis7
	elseif EEPGetSignal(128)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,2)
	EEPSetSwitch(90,2)
	EEPSetSwitch(91,2)
	EEPSetSwitch(92,1)
	EEPSetSwitch(93,1)
	EEPSetSignal(128,2)
	EEPSetSignal(116,2)
	
	--Gleis8
	elseif EEPGetSignal(123)==1 then
	EEPSetSwitch(115,1)
	EEPSetSwitch(87,2)
	EEPSetSwitch(88,2)
	EEPSetSwitch(89,2)
	EEPSetSwitch(90,2)
	EEPSetSwitch(91,2)
	EEPSetSwitch(92,1)
	EEPSetSwitch(93,2)
	EEPSetSwitch(96,1)
	EEPSetSignal(123,2)
	EEPSetSignal(116,2)
	
	
	
	
	else EEPSetSignal(126,2)
	end
end	

function Nachruecken()
	if EEPGetSignal(126)==2 then
	Einfaht_Schattenbahnhof_Nord()
	EEPSetSignal(126,1)
	end
end	


function Schattenbahnhof_sued()

	if EEPGetSignal(168)==1 then
	EEPSetSwitch(152,1)
	EEPSetSignal(168,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(169)==1 then
	EEPSetSwitch(153,2)
	EEPSetSignal(169,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(170)==1 then
	EEPSetSwitch(154,2)
	EEPSetSignal(170,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(171)==1 then
	EEPSetSwitch(155,2)
	EEPSetSignal(171,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(172)==1 then
	EEPSetSwitch(156,2)
	EEPSetSignal(172,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(173)==1 then
	EEPSetSwitch(157,2)
	EEPSetSignal(173,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(174)==1 then
	EEPSetSwitch(158,2)
	EEPSetSignal(174,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(175)==1 then
	EEPSetSwitch(159,2)
	EEPSetSignal(175,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(176)==1 then
	EEPSetSwitch(160,2)
	EEPSetSignal(176,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(177)==1 then
	EEPSetSwitch(161,2)
	EEPSetSignal(177,2)
	EEPSetSignal(209,1)
	
	elseif EEPGetSignal(178)==1 then
	EEPSetSwitch(162,2)
	EEPSetSignal(178,2)
	EEPSetSignal(209,1)
	
	else EEPSetSignal(181,2)
	end
end


function Nachruecken_2()
	if EEPGetSignal(181)==2 then
	Schattenbahnhof_sued()
	EEPSetSignal(181,1)
	end
end	

