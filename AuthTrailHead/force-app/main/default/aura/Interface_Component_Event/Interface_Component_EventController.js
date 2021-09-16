({
	callme : function(component, event, helper) {
		var evt = component.getEvent("first");
        evt.setParams(
            {"EmpName":"Gopal Rao"}
        );
        evt.fire();
        alert('event fired sucessfully');
	},
    show : function(component, event, helper) {
		alert('sucessfully completed event interface');
	}
})