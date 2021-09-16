({
	HanleChildComp : function(component, event, helper) {
        alert('called me 4');
		var ParentCmpValue = event.getParam('EmpName');
        component.set('v.CaptureValuesFromEvent',ParentCmpValue);
	}
})