({
	init : function(component, event, helper)
    {
		var userId = $A.get("$SObjectType.CurrentUser.Id");
        componenet.set("v.userId",userId);
	}
})