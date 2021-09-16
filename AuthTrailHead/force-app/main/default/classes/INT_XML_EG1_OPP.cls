public class INT_XML_EG1_OPP
{
    public string xmlstring{set;get;}
    public Decimal amount{set;get;}
    //public string zconvert{set;get;}
    //public decimal {set;get;}
    public INT_XML_EG1_OPP(){
        list<opportunity> opp =[select name,stagename,amount,closedate from opportunity where amount !=null limit 5];
        dom.Document doc = new dom.Document();
         dom.XmlNode root = doc.createrootelement('opportunities',null,null);
       for(opportunity eo:opp)
        {
            dom.XmlNode branch = root.addchildelement('opportunity',null,null);
            branch.setAttribute('name', eo.name);
            branch.setAttribute('stagename', eo.stagename);
            branch.setAttribute('amount', string.valueOf(eo.Amount.format()));
            branch.setAttribute('closedate', string.valueOf(eo.closedate.format()));
        }
        xmlstring = doc.toxmlstring();
    }
}