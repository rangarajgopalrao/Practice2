@isTest
public class Test_Example_4 
{
    @isTest static void Testme()
    {
        Apex_Example_4 ae = new Apex_Example_4(); //In If Else condition we have test both conditions
        ae.leadsource ='email';
        ae.callme();
        system.assertEquals('K',ae.lastname);
        system.assertequals('Kalyan',ae.firstname);
        ae.leadsource = 'web';
        ae.callme();
        system.assertEquals('M',ae.lastname);
        system.assertequals('Sathish',ae.firstname);
    }
}