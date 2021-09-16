trigger OpportunityTrigger1 on Opportunity (before insert) {
    
    list<opportunity>oppList = trigger.new;
    for(opportunity op:oppList){
        if(op.stagename != 'closedWon' || op.stagename != 'closedLost')
            op.closeDate = system.today() + 30;
            
    }
        

}