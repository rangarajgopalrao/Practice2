public class DataTableAccApex {
	@AuraEnabled
    public static List<Account> getApexMethod(){
        List<Account>Accounts =[select name,rating,phone from account limit 10];
        return Accounts;
    }
}