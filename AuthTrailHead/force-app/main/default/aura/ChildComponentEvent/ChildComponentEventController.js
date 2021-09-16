({
	ChildFireButton : function(component, event, helper) {
        alert('child Called');
		var cmpevent = component.getEvent("regInChild");
        //var childAttribute = component.get("v.ChildValuesPassedToEventAttribute");
        cmpevent.setParams({
            storeMessage : component.get("v.textMessage")
        });
        cmpevent.fire();
	}
})