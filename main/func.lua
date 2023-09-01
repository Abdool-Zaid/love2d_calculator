local func ={}
 function func.eval ()
    io.write("evaluate... ")
    local comp = io.read()
    tonumber(comp)
    comp= load("return " .. comp)() 
    print(comp .."\n")
    end
    
    while true do 
        eval()
    end
return func