global class batch_apex_opportunity_ex2 implements database.Batchable<sobject>
{
    global database.QueryLocator start(database.BatchableContext rada)
    {
        string query = 'select name,closedate,type from opportunity';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext rada,list<opportunity> opp)
    {
        for(opportunity eopp:opp)
        {
            eopp.type='new customer';
            eopp.closedate = system.today()+15;
        }
    }
    global void finish(database.BatchableContext rada)
    {
        id job = rada.getJobId();
        system.debug(job);
    }	
}