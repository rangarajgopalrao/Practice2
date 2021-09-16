public class PR_CHILD_ACC_CON {
	public List<Account> Accounts {set;get;}
    public List<Contact> Con {set;get;}
    
    public PR_CHILD_ACC_CON(){
        Accounts=[select name,phone,industry,rating,(select LastName,FirstName from contacts) from Account];
    Con=new List<Contact>();
        for(Account a:Accounts){
            for(Contact c:a.contacts){
                Con.add(c);
            }
        }
    }
}