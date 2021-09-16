({
	gm : function(component, event, helper)
    {
		component.get("v.msg1","GOOD MORING");
        helper.myname(component);
	},
    gn : function(component, event, helper)
    {
		component.get("v.msg1","GOOD EVENING");
        helper.yourname(component);
	}
})