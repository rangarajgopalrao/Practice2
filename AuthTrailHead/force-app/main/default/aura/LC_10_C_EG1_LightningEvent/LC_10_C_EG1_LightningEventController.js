({
	show : function(component, event, helper) 
    {
		var evt = component.getEvent("Firstevent");
        evt.setParams({"EmpName":"Rupom/Gopal"})
        evt.fire();
	}
})