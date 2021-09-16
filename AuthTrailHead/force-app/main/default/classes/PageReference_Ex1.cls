public class PageReference_Ex1
{
    public string name{set;get;}
    public string qualification{set;get;}
    public string phone{set;get;}
    Public void save()
    {
        if(qualification == 'B.Tech' && Phone == null)
        {
            apexpages.Message msg = new apexpages.Message(apexpages.Severity.ERROR,'Without Phone not accept');
            apexpages.addMessage(msg);
        }else{
            apexpages.Message msg1 = new apexpages.Message(apexpages.Severity.CONFIRM,'Record accept');
            apexpages.addMessage(msg1);
        }
    }
    public void cancel()
    {
        name=null;
        qualification= 'none';
        phone ='';
    }
}