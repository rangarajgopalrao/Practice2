({
	HandledByParent : function(component, event, helper) {
        alert('Parent Called');
		var valueFromEvent = event.getParam("storeMessage");
        component.set("v.parentMessage",valueFromEvent);
	}
})