({
	firechildevent : function(component, event, helper) 
    {
       
		var childEvent = component.getEvent('RegEvnt');
        
        childEvent.setParams({
            EmpName : component.get('v.ChildValue')
        });
        childEvent.fire();
        
	}
})