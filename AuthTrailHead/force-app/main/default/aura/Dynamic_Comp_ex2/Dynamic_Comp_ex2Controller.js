({
	callme : function(component, event, helper)
    {
        $A.createComponent("c:Dynamic_Comp_Account",{},
                           function(cmp,status,errorMessage){
                               if(status=='SUCCESS')
                               {
                                   var body = component.get("v.body");
                                   body.push("cmp");
                                   component.set("v.body",body);
                               }
                           })	
	}
})