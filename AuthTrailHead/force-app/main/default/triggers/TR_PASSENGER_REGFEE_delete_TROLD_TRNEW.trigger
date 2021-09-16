trigger TR_PASSENGER_REGFEE_delete_TROLD_TRNEW on passenger__c (before delete) 
{
    list<passenger__c> OP = TRIGGER.OLD;
    for(passenger__c eop: op)
    {
        if(eop.Registration_fee__c > 5000) // if amount > 5000 cannot delete //
        {
            eop.Registration_fee__c.adderror('your not vip.vip means more than amount of 5000 :');
        }
    }
}