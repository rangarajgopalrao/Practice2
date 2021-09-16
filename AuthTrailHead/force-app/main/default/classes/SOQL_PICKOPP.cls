public class SOQL_PICKOPP
{
    public string searchtext{set;get;}
    public List<opportunity>opp{set;get;}
    
    public void find()
    {
        string query = 'select id,name,stagename,amount from opportunity where name like \'%'+searchtext+'%\'';
        opp = database.query(query);
    }
}