public class App_Event_Account_Search
{
	@AuraEnabled
    public Static Account accSearch(string accName)
    {
        Account acc = [select id,Name,Phone,Industry from Account where name =:accName];
        return acc;
    }
    @AuraEnabled
    public Static Contact conSearch(string accName)
    {
        Account acc = [select id,name,phone,industry from account where name =:accName];
        Contact con = [select id,Firstname,Lastname,Phone from Contact where accountId =:acc.Id];
        return con;
    }
}