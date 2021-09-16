({
	showme : function(component, event, helper) 
    {
		var name = event.getParam("empName");
        var city = event.getParam("city");
        component.set("v.stdname",name);
        component.set("v.stdcity",city);
	}
})