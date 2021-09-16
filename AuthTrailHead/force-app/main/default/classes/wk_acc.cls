@istest
public class wk_acc 
{
    public static testmethod void callme()
    {
        List<account> acc = [select id,name,wk_account__c from account];
        for(account a: acc)
        {
            system.assertEquals(1, a.wk_account__c);
        }
    }

}