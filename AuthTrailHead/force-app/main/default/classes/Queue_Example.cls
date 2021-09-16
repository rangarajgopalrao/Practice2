public class Queue_Example implements queueable
{
    public void execute(queueablecontext qc)
    {
        list<account> accounts= [select id,name from account where createddate=Last_week];
        delete accounts;
    }
}