public class Contact_Delete_EX 
{
    public static void CallMe(List<contact>contacts)
    {
        List<id> accIds = new List<Id>();
        for(contact c: contacts){
            if(c.AccountId != null)
            {
                accIds.add(c.AccountId);
            }
            List<account> accounts = [select id,name from account where id in :accIds];
            delete accounts;
        }
    }
}