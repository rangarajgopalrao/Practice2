public class Apex_Example_8 
{
    public void callme()
    {
        List<Opportunity> op = [select id,name,stagename,closedate from opportunity];
        for(opportunity o: op)
        {
            o.stagename = 'Closedwon';
            o.closedate = system.today();
        }
        update op;
    }
    public void show()
    {
        List<Opportunity> op = [select id from opportunity where createddate = Today];
        delete op;
    }
}