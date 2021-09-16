({
	showlist : function(component, event, helper) 
    {
		var SText = component.get("v.searchtext");
        var action = component.get("c.DisplayListContacts");
        
        action.setParams({"searchtext":SText});
        action.setCallback(this,function(response){
            
            var state = response.getState();
            if(state == 'SUCCESS')
            {
                var Result = response.getReturnValue();
                component.set("v.contacts",Result);
            }
        });
        $A.enqueueAction(action);
	}
})