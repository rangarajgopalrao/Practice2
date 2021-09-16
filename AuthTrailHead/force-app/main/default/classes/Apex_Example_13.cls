global class Apex_Example_13 implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query ='select id,ownerId from account';
        Return Database.getQueryLocator(query);
    }
    global void execute (Database.BatchableContext bc,List<Account>scope)
    {
        user u =[select id from user where alias='ST'];
        for(account a: scope)
        {
            a.ownerId = u.Id;
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}