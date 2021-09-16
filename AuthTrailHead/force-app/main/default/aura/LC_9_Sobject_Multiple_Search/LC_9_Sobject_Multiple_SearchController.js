({
	callme : function(component, event, helper)
    {
		var sText = component.get("v.searchtext");
        var action = component.get("c.displayListAccount");
        
        action.setParams({"SearchText":sText});
        //alert('call me1');
        action.setCallback(this,function(response){
            
            var state = response.getState();
            //alert('call me2');
            if(state =='SUCCESS')
            {
                var Result = response.getReturnValue();
                //alert('call me3');
                component.set("v.accounts",Result);
                //alert('call me4');
            }
        });
        $A.enqueueAction(action);
        //alert('call me5');
	},
    show : function(component, event, helper)
    {
        alert('call me5');
        var col = [
            {label:"Account Name", fieldName:"Name", type:"text"},
            {label:"Account Phone", fieldName:"Phone", type:"phone"},
            {label:"Account Industry", fieldName:"Industry", type:"text"},
            {label:"Account Rating",fieldName:"Rating",type:"text"}
        ];
        alert('call me6');
             component.set("v.colums",col);
    }
})