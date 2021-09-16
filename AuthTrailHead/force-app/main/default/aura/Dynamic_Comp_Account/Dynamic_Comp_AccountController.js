({
	show : function(component, event, helper)
    {
		var action = component.get("c.getAccounts");
        action.setCallback(this,function(response){
            if(response.getState=='SUCCESS')
            {
                var result = response.getReturnValue();
                component.set("v.accounts",result);
            }
        });
        $A.enqueueAction(action);
	}
})