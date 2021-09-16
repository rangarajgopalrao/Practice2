public class DML_PAGE_REF_EX1_CONTACT {
    public string lastname{set;get;}
    public string firstname{set;get;}
    public string phone{set;get;}
    public string email{set;get;}
    public pagereference create(){
        integer count =[select count() from contact where lastname =:lastname];
        pagereference p;
        if(count>0){
            apexpages.Message msg = new apexpages.Message(apexpages.Severity.ERROR,'duplicate contact found');
            apexpages.addMessage(msg);
        }
        else{
            contact co = new contact();
            co.lastname=lastname;
            co.firstname = firstname;
            co.phone= phone;
            co.email = email;
            insert co;
            p = new pagereference('/'+co.Id);
        }
        return p;
    }
    public void cancel(){
        lastname =null;
        firstname = null;
        phone = null;
        email = null;
    }
}