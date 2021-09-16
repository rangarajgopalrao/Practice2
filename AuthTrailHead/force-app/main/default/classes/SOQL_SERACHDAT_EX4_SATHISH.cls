public class SOQL_SERACHDAT_EX4_SATHISH 
{
    public list<account>acc{set;get;}
    public string searchdata{set;get;}
    public void getallaccounts()
    {
        string query = 'select id,name,phone,industry,rating from account where name like \'%'+searchdata+'%\'';    //'%abc%'//
        acc = database.query(query);
    }
}