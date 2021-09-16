public class DML_EX1 {
    public string accname{set;get;}
    public string phone{set;get;}
    public string industry{set;get;}
    public string rating{set;get;}
    public PageReference create()
    {
       integer count = [select count() from account where name=:accname];
        PageReference p;
        if(count>0){
            apexpages.message msg = new apexpages.Message(apexpages.Severity.ERROR,'duplicate record found');
            apexpages.addMessage(msg);
        }
        else
        {
            account acc = new account();
            acc.name = accname;
            acc.Industry= industry;
            acc.Phone = phone;
            acc.Rating = rating;
            insert acc;
            p = new PageReference('/'+acc.id);
        }
        return p;
    }
    public void cancel()
    {
        accname = null;
        phone= null;
        industry = null;
        rating = null;
    }
}