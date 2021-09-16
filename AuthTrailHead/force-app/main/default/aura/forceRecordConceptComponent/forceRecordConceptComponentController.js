({
	save : function(component, event, helper) 
    {
		var action = component.get("c.getContact");
        var value1 = component.get("v.firstname");
        var value2 = component.get("v.lasstname");
        action.setParams({
            clastname :value1,cfirstname:value2,ParentAccountId:component.get("v.recordId")
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state=='SUCCESS')
            {
                alert('contact inserted successfully');
            }
        });
        $A.enqueueAction(action);
	}
})