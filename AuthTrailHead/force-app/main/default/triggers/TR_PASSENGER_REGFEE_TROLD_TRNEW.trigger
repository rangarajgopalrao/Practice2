trigger TR_PASSENGER_REGFEE_TROLD_TRNEW on passenger__c (before UPDATE) 
{
    list<passenger__c> OP = TRIGGER.OLD;
    list<passenger__c> NP = TRIGGER.NEW;
    for(passenger__c eop:op)
    {
        for(passenger__c enp:np)
        {
            if(eop.id == enp.id)
            {
                if(enp.Registration_fee__c > eop.Registration_fee__c)
                {
                    enp.Registration_fee__c.adderror('your latest fee must be not less than the previous fee.your previous fee was :'+eop.Registration_fee__c);
                }
            }
        }
    }
}