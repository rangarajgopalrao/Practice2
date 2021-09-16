public class SOQL_EX6 
{
    public list<account>acc{set;get;}
    public SOQL_EX6()
    {
        acc = [select id,name,industry,phone,(select firstname,lastname,phone from contacts),(select name,stagename,amount from opportunities),(select subject,status from cases)from account];
    }
}