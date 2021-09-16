({
	doInit : function(component, event, helper) {
        alert('callme');
		component.find("NewContact").getNewRecord(
        "Contact",
         null,
         false,
            $A.getCallback(function(){
             alert('callme2');
                //var newcont = component.get("v.newcon");
                var AccountId = component.get("v.recordId");
             alert('recordId'+AccountId);
            })
        );
	},
    callme : function(component, event, helper) {
        //component.set("v.contact.AccountId",component.get("v.recordId"));
        component.find("NewContact").saveRecord(function(saveResult){
            alert('contact record inserted successfully');
            alert('saverecord state'+saveResult.state);
            alert('Error'+saveResult.error);
            alert('recordId'+saveResult.recordId);
        });
	}
})