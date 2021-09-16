public class Account_Event_Ex 
{
	@AuraEnabled
    public Static Id mysearch(String phone)
    {
        contact con = [select id,accountid from contact where phone =:phone];
        Return con.accountid;
    }
    @AuraEnabled
    public Static string conCreate(string lastname,string firstname,Id accountId)
    {
        String status;
        Try
        {
            contact con = new contact();
            con.Lastname= lastname;
            con.FirstName= firstname;
            con.AccountId = accountId;
            insert con;
            status = 'Record Created';
        }
        catch(exception e)
        {
            status = 'DML failed';
        }
        Return status;
    }
}