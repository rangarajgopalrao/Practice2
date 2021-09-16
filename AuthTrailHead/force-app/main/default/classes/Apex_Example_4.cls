public class Apex_Example_4
{
	public string lastname;
    public string firstname;
    public string leadsource;
    
    public void callme()
    {
        if(leadsource=='web')
        {
            lastname='M';
            firstname='Sathish';
        }else{
            lastname='K';
            firstname='Kalyan';
        }
    }
}