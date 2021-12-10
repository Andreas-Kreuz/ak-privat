EEPRegisterSignal(2986)

function EEPOnSignal_2986(starus)
	if(starus==1)then
	EEPStructureAnimateAxis("#612_Autohaus_Kutscher_Hebebue4_PA1","Lift", 1000 )
	EEPStructureAnimateAxis("#610_Autohaus_Kutscher_Hebebue4_PA1","Lift", 1000 )
	EEPStructureAnimateAxis("#611_Autohaus_Kutscher_Hebebue4_PA1","Lift", 1000 )
	else
	EEPStructureAnimateAxis("#612_Autohaus_Kutscher_Hebebue4_PA1","Lift", -1000 )
	EEPStructureAnimateAxis("#610_Autohaus_Kutscher_Hebebue4_PA1","Lift", -1000 )
	EEPStructureAnimateAxis("#611_Autohaus_Kutscher_Hebebue4_PA1","Lift", -1000 )
	end
end	