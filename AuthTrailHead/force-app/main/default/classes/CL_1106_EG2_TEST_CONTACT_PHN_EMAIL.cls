@istest(seealldata=true)
public class CL_1106_EG2_TEST_CONTACT_PHN_EMAIL 
{
	@istest
    public static void methodemailblank()
    {
        contact c = new contact(lastname = 'chaithu 1',phone = '4321',email=null);
        insert c;
        c = [select name,phone from contact where id = :c.Id];
        system.assertEquals('4321', c.Phone);
        system.assertEquals('no@gmail.com', c.email);
    }
    @istest
    public static void methodphoneblank()
    {
        contact c = new contact(lastname = 'chaithu 2',email = 'noneoftheabove@gmail.com',phone=null);
        insert c;
        c = [select name,phone from contact where id = :c.Id];
        system.assertEquals('900000', c.Phone);
        system.assertEquals('noneoftheabove@gmail.com', c.email);
    }
    @istest
    public static void methodemailphoneblank()
    {
        contact c = new contact(lastname = 'chaithu 3',email=null,phone=null);
        insert c;
        c = [select name,phone from contact where id = :c.Id];
        system.assertEquals('900000', c.Phone);
        system.assertEquals('no@gmail.com', c.email);
    }
}