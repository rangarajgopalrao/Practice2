({
	callme : function(component, event, helper)
    {
        alert("call Parent 1");
		var col =[
            {label:"Account Name",fieldName:"Name",type:"text"},
            {label:"Account Phone",fieldName:"Phone",type:"phone"},
            {label:"Account Industry",fieldName:"Industry",type:"text"},
        ];
            alert("call Parent 2");
            component.set("v.fileds",col);
	},
    showme : function(component, event, helper)
    {
      /*      alert("call Parent 3");
		var acc = event.getParam("acc");
            
        var acccomp = component.get("v.Accounts");
            acccomp.push(acc);
            
        component.set("v.Accounts",acccomp);
            alert("call Parent 4");  */
            
            var action = component.get("c.CreateList");
            action.setCallback(this,function(response){
               var state = response.getState();
            if(state =='SUCCESS')
            {
            	var Result = response.getReturnValue();
            	component.set("v.Accounts",Result);
            }
            });
            $A.enqueueAction(action);
	}
})