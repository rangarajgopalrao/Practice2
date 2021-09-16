@isTest
public class Test_Example_11 
{
	@testsetup
    static void invoke()
    {
        opportunity op = new opportunity();
        op.Name= 'Trigger2';
        op.StageName = 'Prospecting';
        op.CloseDate = system.today()+15;
        insert op;
    }
    @istest
    public static void testme()
    {
        opportunity opp = [select name,stagename from opportunity];
        //for(opportunity o: opp){
          opp.StageName = 'Closedwon';  
        //}
        update opp;
        opportunity opty = [select id,closedate from opportunity where id =:opp.Id];
        system.assertEquals(system.today(),opty.CloseDate);
    }
}