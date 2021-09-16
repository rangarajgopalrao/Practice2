@isTest
public class Test_Example_8
{
	@Testsetup
    static void invoke()
    {
        opportunity op = new opportunity();
        op.Name = 'Testing 12';
        op.StageName ='Prospecting';
        op.CloseDate = system.today()+15;
        insert op;
        /*opportunity op1 = new opportunity();
        op1.Name = 'Testing 12';
        op1.StageName ='Prospecting';
        op1.CloseDate = system.today()+15;
        insert op1;*/
    }
    @isTest
    static void testme()
    {
        Apex_Example_8 ae = new Apex_Example_8();
        ae.callme();
        List<opportunity> opty = [select id,stagename,closedate from opportunity];
        for(opportunity op: opty)
        {
            system.assertequals('Closedwon',op.StageName);
            system.assertequals(system.today(),op.CloseDate);
        }
    }
    @isTest
    public static void testme1()
    {
        integer count = [select count() from opportunity];
        system.assertequals(0,count);
        Apex_Example_8 ae = new Apex_Example_8();
        ae.show();
        
    }
}