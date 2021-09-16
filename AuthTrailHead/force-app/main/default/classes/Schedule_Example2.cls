public class Schedule_Example2 implements schedulable
{
    public void execute(schedulableContext sc)
    {
        List<Opportunity> optyList = [select id,name,stagename,closedate from opportunity where createdDate=This_Week];
        for(opportunity op: optyList)
        {
            op.stagename = 'Closedwon';
            op.closedate = system.today();
        }
        update optyList;
    }
}