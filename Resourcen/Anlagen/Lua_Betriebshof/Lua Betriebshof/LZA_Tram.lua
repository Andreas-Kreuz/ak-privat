function LZB_0001()
	local if EEPGetSignal(236) ==1 then
	return 1
	else EEPGetSiegnal (236,2)
		if EEPGetSignal (1062)==1then
		EEPSetSignal(1,2)
		else
		EEPSetSignal(1,5)
		end
	end
end		