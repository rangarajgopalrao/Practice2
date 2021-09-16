public class PT_Account_Contact1 {
	public List<Account> Accounts {set;get;}
   // public List<Contact> Contacts {set;get;}
    
    public PT_Account_Contact1(){
        Accounts=[select name,phone,industry,rating,(select LastName,FirstName from contacts) from Account];
    /*Contacts=new List<Contact>();
        for(Account a:Accounts){
            if(a.Contacts.size()>0){
                Contacts.addAll(a.contacts);
                    }
            }*/
        }
}