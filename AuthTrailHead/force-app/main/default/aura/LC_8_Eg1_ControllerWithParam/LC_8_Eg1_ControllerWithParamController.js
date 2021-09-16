({
	callme : function(component, event, helper) 
    {
        //alert('call 0');
		var name = component.get("v.name");
        var phone = component.get("v.phone");
        var fax = component.get("v.fax");
        var industry = component.get("v.industry");
        var rating = component.get("v.rating");
        
        var action = component.get("c.CreaACCOUNT");
        //alert('call 1');
        
        action.setParams({"name":name,"ind":industry,"rat":rating,"phone":phone,"fax":fax});
        //alert('call 2');
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state==='SUCCESS')
            {
                var result = response.getReturnValue();
                component.set("v.flag",true);
                component.set("v.result",result);
            }
        });
        //alert('call 3');
        $A.enqueueAction(action);
        //alert('call 4');
	},
    show : function(component, event, helper)
    {
		component.set("v.name",null);
        component.set("v.phone",null);
        component.set("v.industry",null);
        component.set("v.fax",null);
        component.set("v.rating",null);
	}
})