public class forceRecordConceptApexController
{
	@auraenabled
    public static contact getContact(string ParentAccountId,string clastname, string cfirstname)
    {
        contact c = new contact();
        c.FirstName = cfirstname;
        c.LastName = clastname;
        c.AccountId = ParentAccountId; 
        insert c;
        return c;
    }
}