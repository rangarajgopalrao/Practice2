trigger Payment_Helper on Payment__c (before insert,after insert,after update, after delete) 
{
    if(trigger.isBefore && trigger.isInsert)
    {
        Payment_Helper.beforeinsert(trigger.new);
    }
    else
    {
        if(trigger.isAfter && trigger.isInsert)
        {
            Payment_Helper.afterinsert(trigger.new);
        }
    }
}