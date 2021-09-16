({
	callme : function(component, event, helper) 
    {
        alert("call me 1");
		var name= event.getParam("empName");
        alert("call me 2");
        component.set("v.myName",name);
        alert("call me 3");
	}
})