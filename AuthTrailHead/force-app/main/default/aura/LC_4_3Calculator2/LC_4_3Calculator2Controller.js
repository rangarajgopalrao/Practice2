({
	
    mul : function(component, event, helper)
    {
		var a = component.find("v1").get("v.value");
        var b = component.find("v2").get("v.value");
        var c = a*b;
        if(c>100)
        {
           alert("multiply number should under 100");
           component.find("v3").set("v.value",false); 
        }
        else
        {
            component.find("v3").set("v.value",c);
        }
	},
    add : function(component, event, helper)
    {
		var a = component.find("v1").get("v.value");
        var b = component.find("v2").get("v.value");
        var c = parseInt(a) + parseInt(b);
        if(c>50)
        {
           alert("sub number should under 50");
           component.find("v3").set("v.value",false); 
        }
        else
        {
            component.find("v3").set("v.value",c);
        }
	}
})