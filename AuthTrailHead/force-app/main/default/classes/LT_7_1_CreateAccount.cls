public class LT_7_1_CreateAccount
{
    @AuraEnabled
    public static string CreaACCOUNT(string name,string ind, string rat, string phone, string fax)
    {
        string result;
        try
        {
            account a = new account();
            a.Name = name;
            a.Industry = ind;
            a.Rating = rat;
            a.Phone = phone;
            a.Fax = fax;
            insert a;
            result = 'successfully inserted'+a.Id;
        }
        catch(exception e)
        {
            result = 'unsuccessful insert' +e.getMessage();
        }
        return result;
    }
}