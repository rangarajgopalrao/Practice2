public class Map_Example_1 
{
	 public List<Contact> contacts 				 {Set;get;}
    public Map<String,List<Contact>> accMap 	 {Set;get;}
    public String accName 		 				 {set;get;}
    public Map_Example_1(){
        /* Write a soql to fetch all the account records with corresponding contact records */
        List<Account> accs =[select id,name,(select lastname,firstname,phone,email from Contacts) from Account];
        accMap=new Map<String,List<Contact>>();
        /* create a map with account name as  key and correponding contacts as value .*/
        for(Account a : accs){
            accMap.put(a.name,a.contacts);
        }
    }
    public void search(){
        /* get the list of accounts based on accName from the map */
        contacts=accMap.get(accName);
    }
}