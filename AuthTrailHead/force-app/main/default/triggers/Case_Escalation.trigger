trigger Case_Escalation on Case (before update) 
{
    for(case c: trigger.new){
        if(c.status=='escalated'&& trigger.oldmap.get(c.id).status=='new' && string.isBlank(c.description)){
            c.addError('Please provide description to escalate the case');
        }
    }
}