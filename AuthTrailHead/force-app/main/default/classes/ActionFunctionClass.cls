public class ActionFunctionClass 
{
    public account acc{set;get;}
    public ActionFunctionClass(){
        acc = new account();
    }
    public pagereference saveAccount(){
        insert acc;
        return new pagereference('/'+acc.id);
    }
}