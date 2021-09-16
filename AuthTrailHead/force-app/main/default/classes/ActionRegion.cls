public class ActionRegion 
{
    public contact contacts{set;get;}
    public string conName{set;get;}
    public ActionRegion(){
        contacts = new contact();
    }
    public pagereference retrieveContactRecord(){
        contacts = [select name,email,accountid from contact where name=:conName];
        return null;
    }
}