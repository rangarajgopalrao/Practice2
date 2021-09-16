({
	show : function(component, event, helper)
    {
		var evt = event.getSource();
        var name = evt.get("v.name");
        var evid = evt.getLocalId();
        console.log('name=====>'+name);
        console.log('ID=====>'+evid);
	}
})