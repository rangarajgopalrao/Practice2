public class SOQL_EX5_PICKLIST_SATHISH
{
    public string selected{set;get;}
    public List<selectoption>options{set;get;}
    public List<account>acc{set;get;}
    
    public SOQL_EX5_PICKLIST_SATHISH()
    {
        options = new list<selectoption>();
        selectoption s1 = new selectoption('None','---None---'); // item value and item lebel
        selectoption s2 = new selectoption('This_week','This Week');
        selectoption s3 = new selectoption('Last_Week','Last Week');
        selectoption s4 = new selectoption('Last_Month','Last Month');
        selectoption s5 = new selectoption('This_Year','This Year');
        options.add(s1);
        options.add(s2);
        options.add(s3);
        options.add(s4);
        options.add(s5);
    }
    public void search()
    {
        if(selected != 'none')
        {
           string query = 'select id,name,industry,phone,rating from account where createddate='+selected;
            acc = database.query(query);
        }
    }
}