public class CH_SOQL1_CONTACT_CASELIST 
{
	public List<Contact> conList {get; set;}
    
    public CH_SOQL1_CONTACT_CASELIST()
    {
        conlist = [select firstname,lastname,email,phone,(select status,subject from cases) from contact where id in(select contactid from case)];
    }
}