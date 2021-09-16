public class Schedule_Example implements schedulable
{
    public void execute(schedulableContext sc)
    {
        List<Account> accounts = [select id,name from account where createdDate = last_N_days:10];
        delete accounts;
    }
}