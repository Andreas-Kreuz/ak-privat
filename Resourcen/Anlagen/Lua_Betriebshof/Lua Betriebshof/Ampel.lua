I=0
A=0

clearlog()


function EEPMain()
    I=I+1

A=A+1
    Kreuzung1()

	return 1
	
end

function Kreuzung1()
	if A==1 then
	EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)
elseif A==10 then
	EEPSetSignal(739,2);EEPSetSignal(741,2);EEPSetSignal(740,2);EEPSetSignal(738,2)


	
	A=0
end
end



