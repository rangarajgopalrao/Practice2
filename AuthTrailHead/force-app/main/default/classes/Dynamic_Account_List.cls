public class Dynamic_Account_List 
{
	@AuraEnabled
    public static List<Account> getAccounts()
    {
        List<Account> accounts = [select id,name,phone,industry from account limit 5];
        return accounts;
    }
}