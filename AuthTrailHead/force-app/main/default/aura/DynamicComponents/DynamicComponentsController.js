({
	callme : function(component, event, helper) 
    {
        $A.createComponents(
            [
                [
                    "lightning:button",
                    {
                        "aura:id":"btn",
                        "label":"Submit",
                        "variant":"success",
                        "onclick":component.getReference("c.invokeMe")
                    }
                ],
                [
                    "lightning:input",
                    {
                        "aura:id":"txt1",
                        "label":"Emp DOB",
                        "type":"date"
                    }
                ],
                [
                    "lightning:input",
                    {
                        "aura:id":"txt2",
                        "label":"Emp Salary",
                        "type":"Decimal"
                    }
                ]
            ],
            function(components,status,errorMessage){
                                if(status=='SUCCESS'){
                                    var body1 = component.get("v.body");
                                components.forEach(function(item){body1.push(item);});
                                component.set("v.body",body1);
                                }
                                else if(status=='INCOMPLETE'){
                                    alert('no response from server,your component not created');
                                }
                                    else if(status=='ERROR'){
                                        alert('ERROR'+errorMessage);
                                    }
                            }
        );
	},
    invokeMe: function(component, event, helper){
        alert('success');
    },
    Destruct : function(component, event, helper){
        var a =component.find("btn");
        a.destroy();
        var b =component.find("txt1");
        b.destroy();
        var c =component.find("txt2");
        c.destroy();
    }
})