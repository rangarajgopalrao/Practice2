public class Governing_Example 
{
    public void soqllimit()
    {
        for(integer i=1; 1<=99 ;i++)
        {
            List<Account> acc =[select id,name from account];
        }
    }
    public void dmlexample()
    {
        for(integer i=1; 1<=200 ;i++)
        {
            account a = new account();
            a.name= 'gopal'+i;
            a.Phone ='040-2244';
            insert a;
        }
    }
    public void dmlrows()
    {
        list<Account> accounts = new list<Account>();
        for(integer i=1; i<=10003; i++)
        {
             account a = new account();
             a.name= 'gopal'+i;
             a.Phone ='040-2244';
             accounts.add(a);
        }
        insert accounts;
    }
}