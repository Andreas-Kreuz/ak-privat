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
elseif A==5 then
	EEPSetSignal(739,2);EEPSetSignal(741,2);EEPSetSignal(740,2);EEPSetSignal(738,2)
elseif A==10 then 
	EEPSetSignal(739,3);EEPSetSignal(741,3);EEPSetSignal(740,3);EEPSetSignal(738,3)
elseif A==45 then	
	EEPSetSignal(739,4);EEPSetSignal(741,4);EEPSetSignal(740,4);EEPSetSignal(738,4)
elseif A==55 then
	EEPSetSignal(739,5);EEPSetSignal(741,5);EEPSetSignal(740,5);EEPSetSignal(738,5)
elseif A==60 then	
	EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)
elseif A==65 then
	EEPSetSignal(732,1);EEPSetSignal(731,1);EEPSetSignal(730,1);EEPSetSignal(729,1)
elseif A==70 then
	EEPSetSignal(732,2);EEPSetSignal(731,2);EEPSetSignal(730,2);EEPSetSignal(729,2)
elseif A==75 then
	EEPSetSignal(732,3);EEPSetSignal(731,3);EEPSetSignal(730,3);EEPSetSignal(729,3)
elseif A==110 then
	EEPSetSignal(732,4);EEPSetSignal(731,4);EEPSetSignal(730,4);EEPSetSignal(729,4)
elseif A==115 then
	EEPSetSignal(732,5);EEPSetSignal(731,5);EEPSetSignal(730,5);EEPSetSignal(729,5)
elseif A==120 then
	EEPSetSignal(732,1);EEPSetSignal(731,1);EEPSetSignal(730,1);EEPSetSignal(729,1)
	
	A=0
end
end



