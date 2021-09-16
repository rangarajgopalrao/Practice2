({
	invoke : function(component, event, helper) 
    {
        alert("call 4");
		var lname = component.find("lname").get("v.value");
        var fname = component.find("fname").got("v.value");
        var accountId = event.getParam("accId");
        
        alert("call 5");
        var action = component.get("c:createCon");
        action.setParams({"lastname":lname,"firstname":fname,"accountId":accountId});
        action.setCallback(this,function(response){
            var state = response.getState();
            
            alert("call 6");
            if(state =='SUCCESS')
            {
                alert(response.getRetunValue());
            }else
            {
                alert('Failed');
            }
        });
        $A.enqueueAction(action);
	}
})