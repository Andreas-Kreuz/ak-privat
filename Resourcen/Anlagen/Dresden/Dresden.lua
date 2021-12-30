I=0
clearlog()

print("Hey let's start, EEP Version is: ", EEPVer)

function EEPMain()
    print("Counter: ",I)
    I=I+1
    if (I>9) then return 0 end
    return 1
end