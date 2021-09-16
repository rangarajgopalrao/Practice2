global class batch_apex_ex1 implements database.Batchable<sobject> 
{
    global database.QueryLocator start(database.BatchableContext BC)
    {
        string query='select id,name,rating from account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext BC,list<account>acc)
    {
        for(account ea:acc)
        {
            ea.rating='Hot';
            update ea;
        }
    }
    global void finish(database.BatchableContext BC)
    {
      id gopal = bc.getJobId();
        system.debug(gopal);
    }
}