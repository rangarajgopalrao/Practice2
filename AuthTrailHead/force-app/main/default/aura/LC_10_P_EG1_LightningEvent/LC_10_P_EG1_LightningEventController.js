({
	callme : function(component, event, helper)
    {
		alert("Parent is handling the Child when clicked on Submit button");
        
        var name = event.getParam("EmpName");
        component.set("v.StdName",name);
	}
})