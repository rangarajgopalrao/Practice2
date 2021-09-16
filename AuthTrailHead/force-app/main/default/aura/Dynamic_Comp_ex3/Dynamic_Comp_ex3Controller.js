({
	show : function(component, event, helper) 
    {
        $A.createComponent("lightning:button",
                           {"label":"Submit","onclick":component.getReference("c.invoke")},
                           function(cmp,status,errorMessage)
                           {
                               var body = component.get("v.body");
                               body.push(cmp);
                               component.set("v.body",body);
                           }
                          )
	},
    
    invoke : function(component, event, helper)
    {
        alert('invoke me');
    }
})