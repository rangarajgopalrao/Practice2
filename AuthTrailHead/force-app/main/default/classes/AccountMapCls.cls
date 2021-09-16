public class AccountMapCls
{
	public Map<Id, Account>  accMap {get; set;}
    public AccountMapCls(){
        List<Account>   accList = [Select name, phone, rating, industry, annualRevenue 
                                   From Account LIMIT 5];
        accMap = new Map<id, Account>(accList);
    }
}