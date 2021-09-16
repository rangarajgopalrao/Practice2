({
	callme : function(component, event, helper) 
    {
        //alert('first call');
		var evt = event.getSource();
        var et = evt.getLocalId();
        //alert('second call');
        var a = component.find("v1").get("v.value");
        //alert('third call');
        var b = component.find('v2').get('v.value');
        var c = component.find('v3').get('v.value');
        
        if(et=='SI')
        {
            var d = a*b*c/100;
            component.find('v4').set('v.value',d);
        }
        else if(et=='CI')
        {
            var d = a*(Math.pow(1+b/100,c))-a;
            component.find('v4').set('v.value',d);
        }
            else
            {
                component.find('v4').set('v.value',null);
                component.find('v1').set('v.value',null);
                component.find('v2').set('v.value',null);
                component.find('v3').set('v.value',null);
            }
	}
})