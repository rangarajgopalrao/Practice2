({
	invoke : function(component, event, helper) 
    {
        alert("call me 4");
		var evt = component.getEvent("myEvent");
        alert("call me 5");
        evt.setParams({"empName":"Sathish Myla"});
        alert("call me 6");
        evt.fire();
        alert("call me 7");
	}
})