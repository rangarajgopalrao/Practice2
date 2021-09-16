@isTest
public class Test_Example_5
{
	@isTest
    static void testme()
    {
        contact c = new contact();
        c.LastName = 'M';
        c.FirstName = 'Sathish';
        c.phone = '040-1234';
        insert c;
        
        Apex_Example_5 ae = new Apex_Example_5();
        ae.callme();
        Integer count = [select count() from contact where lastname=:ae.LastName and firstname=:ae.FirstName];
        system.assertEquals(1, count);
    }
}