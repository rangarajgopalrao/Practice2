({
	show : function(component, event, helper) {
		
        var comp1 = component.find('firstComp');  // by using aura:id we are finding the values
        comp1.CallAuraMethod('Gopal Rao','Hyderabad'); // className.AuraMethodName('passing values');
	}
})