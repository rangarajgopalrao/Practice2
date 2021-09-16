public class Apex_Example_7
{
    public string name;
    public string industry;
    public string rating;
    
    public void me()
    {
        List<account> accounts = [select id,rating from account];
        for(account a: accounts)
        {
            a.rating= 'Hot';
        }
        update accounts;
    }
    public void show()
    {
        List<account> accounts = [select id from account where industry='energy'];
        delete accounts;
    }
}