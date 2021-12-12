insulate("Check traffic light sequence", function()
    require("ak.core.eep.EepSimulator")

    it("Dresden-EEP-17-main can be loaded", function() require("ak.anlagen.dresden.Dresden-EEP-17-main") end)
    it("Error", function() assert(true == false) end)
end)
