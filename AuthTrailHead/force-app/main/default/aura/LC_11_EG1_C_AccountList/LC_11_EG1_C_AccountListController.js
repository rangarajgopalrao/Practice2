({
	addme : function(component, event, helper) 
    {
       /* //alert("call child");
		var nam = component.get("v.NewAcc");
        //alert("call child 1");
        var myevt = component.getEvent("GopalEvt");
        //alert("call child 2");
        myevt.setParams({"acc":nam});
        alert("call child 3");
        myevt.fire();
        alert("call child 4");  */
        
        var action = component.get("c.InsertACC");
        var a = component.get("v.newacc");
        action.setParams({"Acc":a});
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state ==='SUCCESS')
            {
                var Result = response.getReturnValue();
                if(Result =='Created')
                {
                    var myevt = component.getEvent("GopalEvt");
                    myevt.fire();
                }
            }
        });
        $A.enqueueAction(action);
	}
})