({
	invoke : function(component, event, helper) {
		var Params = event.getParam('arguments'); // arguments standard we cannot change and this argument contains
        // combined values which are there in aura method that is EName,Living city
        var name = Params.EName;  // we are seggregate those values into single and store into name
        var city = Params.LivingCity; // we are seggregate those values into single and store into city
        
        component.set("v.EmpName",name);
        component.set("v.EmpCity",city);
	}
})