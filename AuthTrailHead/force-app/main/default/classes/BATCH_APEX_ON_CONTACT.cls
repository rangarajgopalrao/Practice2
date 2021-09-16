global class BATCH_APEX_ON_CONTACT implements database.Batchable<sobject>
{
    global database.QueryLocator start(database.BatchableContext BC)
    {
        string query = 'Select id From Contact where lastmodifiedDate=Today';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext BC,list<contact>records)
    {
        for(contact ec: records)
        {
            ec.department='mechanical & computer science';
            update records;
        }  
    }
    global void finish(database.BatchableContext BC)
    {
        id g = BC.getJobId();
        system.debug(g);
    }
}