({
	callme : function(component, event, helper)
    {
		var evet = event.getSource();
        var eid = evet.getLocalId();
        
        var a = component.find("aval").get("v.value");
        var b = component.find("bval").get("v.value");
        if(eid=='add')
        {
            var c = parseInt(a)+parseInt(b);
            component.find('res').set('v.value',c);
            
        }
        else if(eid=='mul')
        {
            var c = a*b;
            component.find('res').set('v.value',c);
        }
        else
        {
            component.find('res').set('v.value',null);
            component.find('aval').set('v.value',null);
            component.find('bval').set('v.value',null);
        }
	}
})