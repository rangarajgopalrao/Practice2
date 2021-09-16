@isTest
public class Test_Example_2
{
    public testmethod static void testme()
    {
        Apex_Example_2 ae = new Apex_Example_2();
        ae.callme();
        system.assertEquals('Banking', ae.industry);
        system.assertEquals('Hot', ae.rating);
        system.assertEquals('public', ae.ownership);
    }
}