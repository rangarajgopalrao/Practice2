public class Mixed_DML_Duplicate 
{
    @future
    public static void callme()
    {
        userrole r =[select id from userrole where name='president'];
        profile p =[select id from profile where name='test'];
        user u = new user(alias='mn',email='abc@xyz.com',emailencodingkey='UTF-8',lastname='abc',languageLocalekey='en_US',
                         localesIdkey='en_US',profileId=p.Id,userroleId=r.Id,timezonesIdkey='America/Los_Angeles',username='ravi32@abc.com');
        insert u;
    }
    public void show()
    {
        account a = new account();
        a.Name ='test mixed dml';
        a.Phone = '040-5555';
        insert a;
        callme();
    }
}