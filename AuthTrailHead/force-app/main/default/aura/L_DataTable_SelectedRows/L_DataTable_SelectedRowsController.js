({
	init : function(component, event, helper) {
        
        component.set('v.mycolumns', [
            {label: 'Account Name', fieldName: 'linkName', type: 'url', 
            typeAttributes: {label: { fieldName: 'Name' }, target: '_blank'}},
            {label: 'Industry', fieldName: 'Industry', type: 'text'},
            {label: 'Type', fieldName: 'Type', type: 'Text'}
        ]);
        
        helper.fetchAccounts(component, event);
        
    },
    
    handleSelect : function(component, event, helper) {
        
        var selectedRows = event.getParam('selectedRows'); 
        var setRows = [];
        for ( var i = 0; i < selectedRows.length; i++ ) {
            
            setRows.push(selectedRows[i]);

        }
        component.set("v.selectedAccts", setRows);
        
    },
    
    showSelectedName : function(component, event, helper) {
        
        var records = component.get("v.selectedAccts");
        for ( var i = 0; i < records.length; i++ ) {
         
            alert(records[i].Name);
            
        }
    }
})