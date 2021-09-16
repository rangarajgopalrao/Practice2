public class AccountListController_DataTable 
{
	@Auraenabled
    public static List<Account> fetchAcct(){
        List<Account> acc =[Select Id,Name,Industry,type from Account Limit 5];
        return acc;
    }
}