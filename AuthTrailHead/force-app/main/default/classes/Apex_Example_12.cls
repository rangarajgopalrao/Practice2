global class Apex_Example_12 implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query ='select id,lastname,firstname,leadsource,rating from lead';
        Return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<lead> leads)
    {
        for(lead l: leads)
        {
            l.leadsource = 'web';
            l.rating= 'warm';
        }
        update leads;
    }
    global void finish(Database.BatchableContext bc)
    {
        
    }
}