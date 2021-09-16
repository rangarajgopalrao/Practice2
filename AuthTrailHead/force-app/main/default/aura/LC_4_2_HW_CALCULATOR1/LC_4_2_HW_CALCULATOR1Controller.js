({
	submit : function(component, event, helper)
    {
		var p = component.find("ef1").get("v.value");
        var t = component.find("ef2").get("v.value");
        var r = component.find("ef3").get("v.value");
        var d = p*t*r/100;
        component.find("ef4").set("v.value",d);
	},
    reset : function(component, event, helper)
    {
        var p = component.find("ef1").get("v.value",null);
        var t = component.find("ef2").get("v.value",null);
        var r = component.find("ef3").get("v.value",null);
        var d = component.find("ef4").set("v.value",null);
        
	}
})