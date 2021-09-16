public class DML_EX41_1 
{
    public void create()
    {
        savepoint sp = database.setSavepoint();
        try{
            account acc = new account();
            acc.name='TCS Savepoint';
            acc.Phone='040-1324';
            acc.industry='Banking';
            acc.rating='Hot';
            insert acc;
            contact con = new contact();
            con.firstname = 'Satish';
            con.Phone ='040-54863';
            insert con;
        }
        catch(exception e)
        {
            database.rollback(sp);
        }
    }
}