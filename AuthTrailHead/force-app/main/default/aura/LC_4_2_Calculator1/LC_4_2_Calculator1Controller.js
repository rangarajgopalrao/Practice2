({
	sum : function(component, event, helper) {
		var a = component.get("v.first");
        var b = component.get("v.second");
        var c = parseInt(a)+parseInt(b);
        component.set("v.result",c);
	},
    sub : function(component, event, helper) {
		var a = component.get("v.first");
        var b = component.get("v.second");
        var c = parseInt(a)-parseInt(b);
        component.set("v.result",c);
	},
    mul : function(component, event, helper) {
		var a = component.get("v.first");
        var b = component.get("v.second");
        var c = a*b;
        component.set("v.result",c);
	},
    div : function(component, event, helper) {
		var a = component.find("v1").get("v.value");
        var b = component.find("v2").get("v.value");
        var c = a/b;
        component.find("v3").set("v.value",c);
	}
})