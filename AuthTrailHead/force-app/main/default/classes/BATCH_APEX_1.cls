global class BATCH_APEX_1 implements database.Batchable<sobject>
{
    global database.QueryLocator start(database.BatchableContext BT)
    {
        return database.getQueryLocator('select industry,name,rating from account');
    }
    global void execute(database.BatchableContext BT,list<account>acc)
    {
        for(account ea:acc)
        {
          ea.rating='Hot';  
        }
        update acc;
    }
    global void finish(database.BatchableContext BT)
    {
        
    }
}