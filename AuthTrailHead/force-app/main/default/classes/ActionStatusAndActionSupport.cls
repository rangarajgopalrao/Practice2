public class ActionStatusAndActionSupport {
    public List<selectOption>selectedList{set;get;}
    public List<Contact>Contacts{set;get;}
    public string selectedAccRecord{set;get;}
    public ActionStatusAndActionSupport(){
        selectedList = new List<selectOption>();
        Contacts = new List<contact>();
        selectedList.add(new selectOption('','--None--'));
        for(account ea:[select id,name from account limit 100]){
           selectedList.add(new selectoption(ea.id,ea.Name)); 
        }
    }
    public pagereference retreiveContacts(){
        if(selectedAccRecord !=''){
            contacts = [select id,lastname,email,accountid from contact where accountid =:selectedAccRecord];
        }
        return null;
    }
}