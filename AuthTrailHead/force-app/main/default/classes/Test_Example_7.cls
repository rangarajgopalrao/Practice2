@isTest
public class Test_Example_7
{
	@isTest
    public static void invoke()
    {
        account acc = new account();
        acc.Name = 'Gopal';
        acc.Industry = 'energy';
        acc.rating ='hot';
        insert acc;
    }
    @isTest
    public static void testme()
    {
        Apex_Example_7 ae = new Apex_Example_7();
        ae.me();
        account a =[select id,name,industry,rating from account];
        system.assertEquals('Hot', a.Rating);
    }
    @isTest
    static void testme1()
    {
        Apex_Example_7 ae = new Apex_Example_7();
        ae.show();
        integer count = [select count() from account];
        system.assertEquals(0, count);
    }
}