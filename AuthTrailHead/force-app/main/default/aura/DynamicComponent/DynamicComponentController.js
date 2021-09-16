({
	onclick : function(component, event, helper) {
		$A.createComponent(
            "lightning:button",
            {"label":"Success",
             "variant":"success",
             "onclick" :component.getReference("c.invokMe")},
            function(Nextbutton,status,errorMessage){
                var body1 = component.get("v.body");
                body1.push(Nextbutton);
                component.set("v.body",body1);
            }
        );
	},
    invokMe: function(component, event, helper) {
        alert('called from dynamic component');
    }
})