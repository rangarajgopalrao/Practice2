public class SSC_11_CreateAccAndList
{
	@AuraEnabled
    public static string InsertACC(Account Acc)
    {
        string Result;
        Try
        {
            Insert Acc;
            Result = 'Created';
        }
        catch(exception e)
        {
            Result = 'Failed';
        }
        Return Result;
    }
    @AuraEnabled
    public static List<Account> CreateList()
    {
        List<Account> accounts = [select name,industry,phone from account];
        Return accounts;
    }
}