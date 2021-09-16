@isTest
public class Test_Example_14 
{
	@isTest
    static void testme()
    {
        Test_Factory_Demo.create();
        Apex_Example_14 ae = new Apex_Example_14();
        String Cron = '0 0 10 15 3 ?';
        Test.startTest();
        	Id JobId = system.schedule('Schedule', cron, ae);
        Test.stopTest();
        integer count = [select count() from account where createdDate=Today];
        system.assertEquals(0, count);
        
        Crontrigger ct =[select id,cronexpression from crontrigger where id=:jobId];
        system.assertEquals(cron, ct.CronExpression);
    }
}