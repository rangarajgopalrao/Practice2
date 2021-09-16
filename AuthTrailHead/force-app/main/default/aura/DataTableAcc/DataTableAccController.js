({
	doinit : function(component, event, helper) 
    {
        alert('callme 0');
        component.set("mycolumn",[{label:"Account Name",fieldName:"Name",type:"text"},
                                  {label:"Account Rating",fieldName:"Rating",type:"picklist"},
                                  {label:"Account Phone",fieldName:"Phone",type:"text"}
            
        ]);	
        alert('callme 1');
        var action = component.get("c.getApexMethod");
        alert('callme 2');
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state=='SUCCESS'){
                alert('insert success');
                component.set("mydata",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
        alert('callme 3');
	},
    doinit : function(component, event, helper) 
    {
        var selectedrows =component.getParam("selectedRows");
        var selectedArrayofRecord =[];
        for(var i=0; i<selectedrows.length;i++){
            selectedArrayofRecord.push(selectedrows[i]);
        }
        component.set("v.SelectedAcc",selectedArrayofRecord);
        component.set("v.AccCheck",true);
    }
})