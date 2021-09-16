public class OppSelectOptionList
{
    public List<selectoption> options {set;get;}
    public string selected{set;get;}
    public List<opportunity> opplist{set;get;}
    
    public OppSelectOptionList()
    {
        options = new list<selectoption>();
        list<string> stagenames = new list<string>{'prospecting','qualification','need analysis','closed won','closed loss'};
            for(string es:stagenames)
        {
            selectoption so = new selectoption(es,es);
            options.add(so);
        }
    }
    public void stageselectaction()
    {
        opplist = [select name,stagename,amount,closedate,account.name from opportunity where stagename = :selected];
    }
}