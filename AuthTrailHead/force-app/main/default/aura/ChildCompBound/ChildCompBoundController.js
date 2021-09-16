({
	ChangeChildAttributeValue : function(component, event, helper) {
        alert('child controller');
		component.set("v.ChildAttributeName","changed To Child Value");
        alert('child controller 1');
        
	}
})