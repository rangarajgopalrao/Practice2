trigger TR_HW_DUPLICATE_RECORD_FOUND_OPPORTUNITY on Opportunity (before insert)
{
    list<opportunity> opp = trigger.new;
    list<opportunity> op = [select name from opportunity];
    for(opportunity eopp:opp)
    {
        for(opportunity eop:op)
    {
        if(eopp.name == eop.name)
        {
            eopp.name.adderror('duplicate record found');
        }
    }
    }
}