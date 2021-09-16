public class Apex_Example_14 implements schedulable
{
    public void execute(schedulableContext sc)
    {
       List<account> accounts = [select id,name from account where createdDate=Today];
       Delete accounts;
    }
}