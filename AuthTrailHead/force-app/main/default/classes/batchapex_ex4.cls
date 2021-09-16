global class batchapex_ex4 implements database.Batchable<sobject>
{
    global database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator('select id from contact where createdDate = today');
    }
    global void execute(database.BatchableContext bc,list<contact>conlist)
    {
        for(contact ec:conlist)
        {
            ec.department = 'Trainer';
        } 
        update conlist;
    }
    global void finish(database.BatchableContext bc)
    {
        batch_apex_ex1 balayya = new batch_apex_ex1();
        database.executeBatch(balayya);
    }
}