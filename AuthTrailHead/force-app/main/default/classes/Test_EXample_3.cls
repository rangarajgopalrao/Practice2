@isTest
public class Test_EXample_3
{
    testmethod static void testme()
    {
        Apex_Example_3 ae = new Apex_Example_3(); //In If Else condition we have test both conditions
        ae.industry = 'banking';
        ae.callme();
        system.assertEquals('hot',ae.rating);
        system.assertequals(10000,ae.amount);
        ae.industry = 'energy';
        ae.callme();
        system.assertEquals('warm',ae.rating);
        system.assertequals(50000,ae.amount);
    }
}