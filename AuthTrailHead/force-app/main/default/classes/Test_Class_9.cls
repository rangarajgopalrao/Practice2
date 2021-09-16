@isTest
public class Test_Class_9
{
	@Testsetup
    static void invokeme()
    {
        user u = [select id from user where alias='ST'];
        opportunity op = new opportunity();
        op.Name ='Testing';
        op.stagename = 'Prospecting';
        op.CloseDate = system.today();
        op.OwnerId = u.Id;
        insert op;
    }
    @isTest
    public static void testme()
    {
        Apex_Example_9 ae = new Apex_Example_9();
        ae.callme();
        user u = [select id from user where alias='ST'];
        List<opportunity> opp = [select id,name from opportunity];
        for(opportunity op: opp){
        system.assertEquals('Closedwon',op.StageName);
        system.assertequals(system.today(),op.CloseDate);    
        }
    }
    @isTest
    static void testme1(){
        Apex_Example_9 ae = new Apex_Example_9();
        ae.showm();
        Integer count =[select count() from opportunity];
        system.assertEquals(0,count);
    }
}