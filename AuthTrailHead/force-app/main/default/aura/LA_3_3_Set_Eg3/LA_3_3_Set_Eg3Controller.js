({
	show : function(component, event, helper) {
		alert("first student details");
        component.set("v.stdname","Gopal");
        component.set("v.stdage","26");
        component.set("v.stdfee","25000");
	},
    save : function(component, event, helper) {
		alert("first student details");
        component.set("v.stdname","namratha");
        component.set("v.stdage","28");
        component.set("v.stdfee","50000");
	},
    clear : function(component, event, helper) {
		alert("first student details");
        component.set("v.stdname","");
        component.set("v.stdage","");
        component.set("v.stdfee","");
	}
})