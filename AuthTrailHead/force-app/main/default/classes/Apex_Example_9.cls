public class Apex_Example_9
{
    public void callme()
    {
        user u = [select id from user where alias='ST'];
        List<opportunity> optyList =[select id,name,stagename,closedate from opportunity where id =: u.id];
        for(opportunity op: optyList){
            op.stagename='Closedwon';
            op.closedate = system.today();
        }
        update optyList;
    }
    public void showm()
    {
        user u = [select id from user where alias='ST'];
        List<opportunity> optyList =[select name,stagename from opportunity where id =: u.Id];
        delete optyList;
    }
}