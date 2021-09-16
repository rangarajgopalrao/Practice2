({
	invoke : function(component, event, helper)
    {
		var lname = component.find("lname").get("v.value");
        var fname = component.find("fname").get("v.value");
        var accountId = event.getParam("accountId");
        var action = component.get("c.conCreate");
        action.setParams({"lastname":lname,"firstname":fname,"accountId":accountId});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state=='SUCCESS')
            {
                alert(response.getReturnValue());
            }
            else
            {
                alert('failed');
            }
        });
        $A.enqueueAction(action);
	}
})