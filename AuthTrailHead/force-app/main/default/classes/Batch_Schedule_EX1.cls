global class Batch_Schedule_EX1 implements Database.Batchable<SObject>,Schedulable
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name from account where createdDate=This_week';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<account>scope)
    {
        Database.delete(scope, false);
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }
    public void execute(SchedulableContext sc)
    {
        Batch_Schedule_EX1 bs = new Batch_Schedule_EX1();
        Id JobId = Database.executeBatch(bs);
    }
}