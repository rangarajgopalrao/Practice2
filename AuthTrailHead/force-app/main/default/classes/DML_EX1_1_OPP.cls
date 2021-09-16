public class DML_EX1_1_OPP {
    public string name{set;get;}
    public string stagename{set;get;}
    public decimal amount{set;get;}
    public date closedate{set;get;}
    public pagereference create(){
        integer count =[select count() from opportunity where name =:name];
        pagereference p;
        if(count>0){
            apexpages.Message msg = new apexpages.Message(apexpages.Severity.ERROR,'duplicate record foung');
            apexpages.addMessage(msg);
        }
        else{
            opportunity op = new opportunity();
            op.Name = name;
            op.CloseDate= closedate;
            op.StageName= stagename;
            op.Amount= amount;
            insert op;
            p = new pagereference('/'+op.Id);
        }
        return p;
    }
    public void cancel(){
        name= null;
        closedate = null;
        amount = null;
        stagename = null;
    }
}