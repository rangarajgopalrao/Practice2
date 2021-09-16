({
	call : function(component, event, helper) {
		alert("CALL button data appears on screen first");
        component.set("v.EmpName","Gopal");
        component.set("v.EmpExp","2");
        component.set("v.EmpSalary","10000");
	},
    show : function(component, event, helper) {
		alert("called SHOW button next data appears on screen");
        component.set("v.EmpName","Swapna");
        component.set("v.EmpExp","3");
        component.set("v.EmpSalary","15000");
	},
    clear : function(component, event, helper) {
		alert("called clear button no data appears on screen");
        component.set("v.EmpName","");
        component.set("v.EmpExp","");
        component.set("v.EmpSalary","");
	}
})