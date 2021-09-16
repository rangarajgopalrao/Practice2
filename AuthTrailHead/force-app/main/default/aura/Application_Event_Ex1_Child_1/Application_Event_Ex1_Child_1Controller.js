({
	invoke : function(component, event, helper)
    {
        var evt = $A.get("e.c:Application_Event_Ex1");
        evt.setParams({"empName":"Gopal"});
        evt.setParams({"city":"Hyderabad"});
        evt.fire();
	}
})