({
	invoke : function(component, event, helper) 
    {
        
		var name = component.get("v.serachText");
        
        var evt = $A.get("e.c:Application_Event_Ex2");
        evt.setParams({"accName":name});
         
        evt.fire();
        
	}
})