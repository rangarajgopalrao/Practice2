trigger PR_CH_ACC_AFTERINSERT_OPP on Account (before insert)
{
    list<account> ac = trigger.new;
    opportunity op = new opportunity();
    for(account ea:ac)
    {
        if(ea.Active__c != 'true' || ea.Industry == 'energy')
        op.Name=ea.name;
        op.CloseDate = system.today();
        op.AccountId = ea.Id;
        op.StageName = 'closedlost';
        insert op;
    }
}