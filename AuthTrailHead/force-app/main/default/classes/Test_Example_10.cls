@isTest
public class Test_Example_10
{
	@isTest
    static void testme()
    {
        account ac = new account();
        ac.name ='Trigger1';
        ac.Phone = '090-200';
        insert ac;
        account a = [select name,rating from account  where id =:ac.Id];
        system.assertEquals('Banking', a.Industry);
        system.assertEquals('Hot', a.Rating);
    }
}