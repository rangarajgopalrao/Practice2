@isTest
public class Test_Exampl_6
{
	@isTest
    static void invokeme()
    {
        opportunity opp = new opportunity();
        opp.Name = 'testing1';
        opp.Amount = 50000;
        opp.StageName = 'prospecting';
        insert opp;
    }
   testmethod static void testme()
    {
        Apex_Class_6 ae = new Apex_Class_6();
        ae.callme();
        
        opportunity opp=[select stagename,name,closedate from opportunity];
        system.assertEquals('Prospecting',opp.StageName);
        system.assertEquals(50000,opp.Amount);
    }
}