({
	callme : function(component, event, helper)
    {
        var action = component.get("c.callAcc");
        action.setCallback(this,function(response){
            
            var state = response.getState();
            if(state=='SUCCESS')
            {
                var result = response.getReturnValue();
                //console.log(result);
                component.set("v.acc",result);
            }
        });
        $A.enqueueAction(action);
	}
})