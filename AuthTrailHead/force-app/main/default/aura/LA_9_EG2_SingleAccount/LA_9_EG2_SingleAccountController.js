({
	callme : function(component, event, helper)
    {
        var account = component.get("v.acc");
		var action = component.get("v.DisplaySingleAcc");
        //alert('callme');
        action.setParams({"ACC":account});
        alert('callme1');
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS')
            {
                var result = response.serReturnValue();
                component.set("v.res",result);
            }
        });
        $A.enqueueAction(action);
	}
})