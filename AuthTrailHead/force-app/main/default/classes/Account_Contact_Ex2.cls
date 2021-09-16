public class Account_Contact_Ex2 
{
	@AuraEnabled
    public Static string createAcc(string name,string rating,string phone)
    {
        string result;
        Try
        {
            Account acc = new account();
            acc.name = name;
            acc.Phone = phone;
            acc.Rating = rating;
            insert acc;
            result = 'Success'+acc.Id;
        }
        catch(exception e)
        {
            result = 'DML Error';
        }
        Return result;
    }
    @AuraEnabled
    public Static string createCon(string lastname,string firstname,string accountId)
    {
        string Result;
        contact con = new contact();
        con.LastName= lastname;
        con.FirstName = firstname;
        con.AccountId = accountId;
        insert con;
        return 'Success';
    }
}