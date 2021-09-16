public class DML_EX4 
{
    public void create()
    {
        try{
            account acc = new account();
            acc.name='TCS';
            acc.Phone='040-1324';
            acc.industry='Banking';
            acc.rating='Hot';
            insert acc;
            contact con = new contact();
            con.firstname = 'Satish';
            con.Phone ='040-54863';
            insert con;
            }catch(exception e)
                {
                    
                }
    }
}