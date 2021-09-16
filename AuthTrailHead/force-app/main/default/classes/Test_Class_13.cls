@isTest
public class Test_Class_13
{
	@isTest
    static void testme()
    {
        Test_Factory_Demo.create();
        Apex_Example_13 ae = new Apex_Example_13();
        Test.startTest();
           Id jobId = Database.executeBatch(ae);
        Test.stopTest();
        User u =[select id from user where alias='st'];
        Account a = [select id,ownerid from account];
        system.assertEquals(u.Id, a.OwnerId);
    }
}