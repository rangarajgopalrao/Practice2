public class SOQL_SATHISH_EX3
{
    public string accname{set;get;}
    public string accindustry{set;get;}
    public list<account>acc{set;get;}
    public void search()
    {
        acc = [select id,name,phone,industry from account where name =:accname and industry =:accindustry];
    }
}