public class Apex_Example_10
{
    public static void callme(List<account>accounts)
    {
        for(account a: accounts)
        {
            a.rating ='hot';
            a.industry ='banking';
            a.ownership ='public';
        }
    }
}