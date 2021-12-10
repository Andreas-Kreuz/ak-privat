I=0

clearlog()


function EEPMain()
    I=I+1
   
    Kreuzung1(I)
    Kreuzung2(I)
    
    
	return 1
	
end


	
function Kreuzung1(arg)
    
  local count = arg;
  
  
  
  
  if count == 1 then
   EEPSetSignal(599,1);EEPSetSignal(708,1);EEPSetSignal(707,1);EEPSetSignal(601,1)
elseif count==10 then
	EEPSetSignal(599,2);EEPSetSignal(708,2);EEPSetSignal(707,2);EEPSetSignal(601,2)EEPSetSignal(711,2)	
elseif count==20 then
	EEPSetSignal(599,3);EEPSetSignal(708,3);EEPSetSignal(707,3);EEPSetSignal(601,3)
elseif count==50 then
	EEPSetSignal(599,4);EEPSetSignal(708,4);EEPSetSignal(707,4);EEPSetSignal(601,4);EEPSetSignal(711,3)
elseif count==60 then
	EEPSetSignal(599,5);EEPSetSignal(708,5);EEPSetSignal(707,5);EEPSetSignal(601,5);EEPSetSignal(711,1)
elseif count==65 then
	EEPSetSignal(709,1);EEPSetSignal(710,1)
elseif count==70 then
	EEPSetSignal(599,1);EEPSetSignal(708,1);EEPSetSignal(707,1);EEPSetSignal(601,1)	
elseif count==72 then
	EEPSetSignal(601,6);EEPSetSignal(599,6)
elseif count==75 then
	EEPSetSignal(709,2);EEPSetSignal(710,2);EEPSetSignal(713,2);EEPSetSignal(712,2)
elseif count==85 then
	EEPSetSignal(709,3);EEPSetSignal(710,3)
elseif count==110 then
	EEPSetSignal(709,4);EEPSetSignal(710,4);EEPSetSignal(601,1);EEPSetSignal(599,1)
elseif count==120 then
	EEPSetSignal(709,5);EEPSetSignal(710,5)
elseif count==130 then
	EEPSetSignal(709,1);EEPSetSignal(710,1);EEPSetSignal(713,1);EEPSetSignal(712,1)
elseif count==132 then
	EEPSetSignal(709,6);EEPSetSignal(710,6)
  end
  
  if count > 132 then count = 0
  end
end


function Kreuzung2(arg)
  
  local count = arg;  
 
  
	if count==1 then
    EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)
  elseif count==5 then
    EEPSetSignal(739,2);EEPSetSignal(741,2);EEPSetSignal(740,2);EEPSetSignal(738,2)
  elseif count==10 then
    EEPSetSignal(739,1);EEPSetSignal(741,1);EEPSetSignal(740,1);EEPSetSignal(738,1)	
  end
  
  if count > 10 then count = 0 
  end
end

