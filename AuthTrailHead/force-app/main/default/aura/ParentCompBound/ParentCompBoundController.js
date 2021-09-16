({
	ChangeParentAttributeValue : function(component, event, helper) {
        alert('Parent controller');
		component.set("v.ParentAttributeName","changed to parent value");
        alert('Parent controller 1');
     
	}
})