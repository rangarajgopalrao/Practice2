({
	show : function(component, event, helper)
    {
        alert("call 1");
		var name = component.find("name").get("v.value");
        alert("call 1.1");
        var phone = component.find("phone").get("v.value");
        alert("call 1.2");
        var rating = component.find("rating").get("v.value");
        alert("call 1.3");
        var action = component.get("c.createAcc");
        
        alert("call 2");
        action.setParams({"name":name,"phone":phone,"rating":rating});
        alert("call 2.1");
        action.setCallback(this,function(response){
            alert("call 2.2");
            var state = response.getState();
            
            alert("call 3");
            if(state =='SUCCESS')
            {
                var result = response.getReturnValue();
                if(result =='DML Error')
                {
                    alert('DML Failed');
                }
                else
                {
                    var evt = component.getEvent("Myacc");
                    evt.setParams({"accId":result});
                    evt.fire();
                }
            }
        });
	}
})