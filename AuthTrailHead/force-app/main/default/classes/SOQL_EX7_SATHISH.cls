public class SOQL_EX7_SATHISH
{
    public list<account> acc{set;get;}
    public string name{set;get;}
    public string industry{set;get;}
    public string query{set;get;}
    public void search()
    {
        query = 'select name,industry,phone,rating from account';
        if(name != '' && industry != '')
        {
            query = query+'where name = \''+name+'\' and industry=\''+industry+'\'';
        }
        else if(name != ''){
            query = query+'where name = \''+name+'\'';
        }
        else if(industry != ''){
            query = query+'where industry = \''+industry+'\'';
        }
        acc = database.query(query);
    }
   
}