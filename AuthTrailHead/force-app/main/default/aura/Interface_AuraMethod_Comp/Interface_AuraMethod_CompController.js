({
	Show : function(component, event, helper) {
		component.CallMe('Gopal Rao',90000);
	},
    Invoke : function(component, event, helper) {
        alert('aura method using interface invoked');
        var Params = event.getParam('arguments');
        var name = Params.EmpName;
        var salary = Params.EmpSalary;
        alert('employee name : '+name);
        alert('employee name : '+salary);
        
        //component.set('v.EmpName',name);
        //component.set('v.EmpSalary',salary);
        //alert('finish');
    }
})