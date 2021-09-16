public with sharing class dml_operation
{
    @AuraEnabled
    public static string createacc(string name, string phone, string industry)
    {
        string result;
        try
        {
            account a = new account();
            a.Name = name;
            a.Phone = phone;
            a.Industry = industry;
            insert a;
            result = 'successfully inserted';
        }
        catch(exception e)
        {
            result = 'unsuccessful insert' +e.getMessage();
        }
        return result;
    }
}