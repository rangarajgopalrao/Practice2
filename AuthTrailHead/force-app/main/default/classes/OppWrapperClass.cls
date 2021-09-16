public class OppWrapperClass 
{
    public List<selectoption>option{set;get;}
    public List<OppWrapper>owp{set;get;}
    public string selected {set;get;}
    public List<opportunity>Opplist{set;get;}
    
    public OppWrapperClass()
    {
        option = new List<selectoption>();
        List<string> Stagelist = new list<string>{'prospecting','closed won','closed loss','qualification','needs analysis'};
            for(string es:Stagelist)
        {
            selectoption op = new selectoption(es,es);
            option.add(op);
        }
        Opplist = [select name,stagename,amount,closedate,account.name from opportunity limit 10];
        owp = new list<OppWrapper>();
        for(opportunity opp:opplist)
        {
            OppWrapper ow = new OppWrapper();
            ow.opp = opp;
            ow.flag = false;
            owp.add(ow);
        }
    }
    public void stage()
    {
        List<opportunity> updateopp = new List<opportunity>();
        for(OppWrapper eow:owp)
        {
            if(eow.flag)
            {
               eow.opp.stagename = selected;
                updateopp.add(eow.opp);
                eow.flag = false;
            }
        }
        update updateopp;
    }
}