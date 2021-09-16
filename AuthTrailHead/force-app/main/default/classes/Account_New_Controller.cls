public class Account_New_Controller
{
    // Test Comments1
    public account acc{set;get;}
    public Account_New_Controller(apexpages.StandardController controller)
    {
       acc = (account) controller.getRecord(); 
    }
    public pagereference save()
    {
        pagereference p;
        integer count = [select count() from account where name =:acc.name];
        if(count >0)
        {
            apexpages.Message msg = new apexpages.Message(apexpages.Severity.ERROR,'Duplicate Record Found');
            apexpages.addMessage(msg);
        }
        else
        {
            insert acc;
            p = new pagereference('/'+acc.Id);
        }
        return p;
    }
}