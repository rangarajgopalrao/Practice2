public class PRACT_VALID_TRY_CATCH
{
    public string name{set;get;}
    public string anum{set;get;}
    
    public void submit()
    {
        try
    {
       account m = new account();
        m.name = name;
        m.accountnumber = anum;
        insert m;
    }
    catch (exception e)
    {
    	Apexpages.Message M2 = New Apexpages.Message(Apexpages.Severity.ERROR,'Your record creation failed with the following error : '+e); 
        Apexpages.addMessage(M2);
    }
    }
}