({
    handlePopup : function(component, event, helper) {
        var modalBody = 'This is the content';        
        component.find('overlayLib').showCustomModal({
            header: "Application Confirmation",
            body: modalBody,            
            showCloseButton: true, 
            footer: 'copyright @ sfdcmeet 2020',
            cssClass: "cOverlayExample1 mymodal",
            closeCallback: function() {
                alert('You closed the alert!');
            }
        })
    }
})