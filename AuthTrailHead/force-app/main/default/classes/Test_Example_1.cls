@isTest
private class Test_Example_1  // using Private is Good Practice
{
    @isTest static void testme()
    {
        Apex_Example_1 ae = new Apex_Example_1();
        ae.callme();
        system.assertEquals('gopal', ae.name);
        system.assertequals('hyd',ae.city);
    }
}