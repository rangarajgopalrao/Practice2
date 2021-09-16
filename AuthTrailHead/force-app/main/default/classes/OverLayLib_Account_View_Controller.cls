public class OverLayLib_Account_View_Controller {
    @AuraEnabled
    public static List<Account> invoke(){
        List<Account> accounts = [Select id,name,type from Account limit 5];
        return accounts;
    }
}