public class Apex_Example_5 
{
	public string firstname;
    public string lastname;
    public string phone;
    
    public void callme()
    {
        contact con = new contact();
        con.FirstName = firstname;
        con.lastName = lastname;
        con.phone = phone;
        insert con;
    }
}