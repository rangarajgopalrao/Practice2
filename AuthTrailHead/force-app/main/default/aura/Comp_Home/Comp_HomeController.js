({
	show : function(component, event, helper)
    {
		var parent = component.find("parent").get("v.value");
        var child = component.find("child").get("v.value");
        var componentName1 ='';
        if(parent =='Account')
        {
            componentName1 ='c:Comp_Account';
        }
        else
        {
            componentName1 ='c:Comp_Lead';
        }
        var componentName2 = '';
        if(child=='contact')
        {
            componentName2 ='c:Comp_Contact';
        }
        else
        {
            componentName2 ='c:Comp_Opportunity';
        }
        $A.createComponent(componentName1,{},function(cmp,status,errorMessage)
                           {
                               if(status=='SUCCESS')
                               {
                                   var body = component.get("v.body");
                                   body.push(cmp);
                                   component.set("v.body",body);
                               }
                           });
        $A.createComponent(componentName2,{},function(cmp,status,errorMessage)
                           {
                               if(status=='SUCCESS')
                               {
                                   var body = component.get("v.body");
                                   body.push(cmp);
                                   component.set("v.body",body);
                               }
                           });
	}
})