({
      show : function(component, event, helper) {
        var actions = [
                        {label : 'View', name:'View'}
                     ];
         component.set('v.columns',[
                    {label: 'Id', fieldName: 'Id', type: 'text'}, 
                     {label: 'name', fieldName: 'Name', type: 'text'},
                     {label: 'type', fieldName: 'Type', type: 'text'},
                    {type: 'action', typeAttributes:{rowActions: actions}}
                ]);
        var abc = component.get("c.invoke");
        abc.setCallback(this, function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                console.log('Success');

                var result = response.getReturnValue();
                component.set("v.accounts",result);
            }
        });
        $A.enqueueAction(abc);
      },
    handleRowAction: function (component, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');
        var recId =row.Id;    
        $A.createComponent(
                            "lightning:recordForm",
                            {
                                "recordId":recId,
                                "objectApiName":"Account",
                                "layoutType":"Full",
                                "mode":"edit"
                            },
                            function(myComp,status,statusMessage){  
                              alert('hi');
                                var body=myComp;
                                component.find("overlayLib").showCustomModal({
                                "header":"Application confirmation",
                                "body":body, 
                                "footer":"Lightning classes",
                                "showCloseButton":true,
                                "cssClass": "mymodal",
                                closeCallback: function(){
                                alert('You closed the alert');
                                }
                            })

                            }
                    );    
    }
})