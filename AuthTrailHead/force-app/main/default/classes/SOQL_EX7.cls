public class SOQL_EX7 
{
	public string LastName {set;get;}
    public string FirstName {set;get;}
    public string phone {set;get;}
    public string email {set;get;}
    public List<lead> leads {set;get;}
    
    public void callMe(){
        string query='select LastName,FirstName,phone,email from Lead';
        if(phone!='' && email!=''){
            query=query+'where phone=\''+phone+'\' and \''+email+'\'';
        }
        else if(phone!=''){
            query=query+'where phone=\''+phone+'\'';
        }
        else if(email!=''){
            query=query+'where email=\''+email+'\'';
        }
        leads=Database.query(query);
    }

}