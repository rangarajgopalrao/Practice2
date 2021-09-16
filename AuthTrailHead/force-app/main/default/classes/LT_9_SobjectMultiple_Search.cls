public class LT_9_SobjectMultiple_Search
{
	@AuraEnabled
    public static List<Account> displayListAccount(string SearchText)
    {
        String query = 'select id,name,phone,industry,rating from account where name like \'%'+SearchText+'%\'';
        List<Account> accounts = database.query(query);
        Return accounts;
    }
}