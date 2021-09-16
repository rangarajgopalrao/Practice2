({
	show : function(component, event, helper)
    {
		var me = component.find("myRec").getNewRecord("Contact",
                                                      null,
                                                      false,
                                                      $A.getCallback(function()
                                                                     {
                                                                         var rec = component.get("v.myFields");
                                                                         var msg = component.get("v.error");
                                                                         if((rec == null) || msg){
                                                                             console.log('Record Creation Failed');
                                                                             return;
                                                                         }else{
                                                                             console.log('Record Created');
                                                                         }
                                                                     })
                                                     );
	}
})