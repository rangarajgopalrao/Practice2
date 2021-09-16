public class Mixed_DML_Example
{
    @future
    public static void callME()
    {        
        account a = new account();
        a.Name ='DML-Exception';
        a.Industry ='Energy';
        a.Phone ='040-2233';
        insert a;
    }
   public void show()
   {
        profile p =[select id from profile where name='test'];
        userRole r = [select id from userRole where name='president'];
        user u = new user(alias='ra',email='ram@xyz.com',emailencodingkey='UTF-8',lastname='ram',languageLocalekey='en_US',
                         localesIdkey='en_US',profileId=p.Id,userroleId=r.Id,timezonesIdkey='America/Los_Angeles',username='ravi32@abc.com');
        insert u;
		callme();
    }
}