public class Account_Line_Item 
{
    public Acc_Wrapper accWrap{set;get;}
    
    public Account_Line_Item()
    {
        accWrap = new Acc_Wrapper();
    }
    public pagereference create()
    {
        pagereference p;
        savepoint sp = database.setSavepoint();
        try{
            
            
        
        account acc = new account();
        acc.Name = accWrap.company;
        acc.Industry = accWrap.industry;
        acc.Phone = accWrap.phone;
        insert acc;
        contact con = new contact();
        con.FirstName = accwrap.firstname;
        con.LastName = accwrap.lastname;
        con.Phone = accwrap.phone;
        con.Email = accwrap.email;
        con.AccountId = acc.Id;
        insert con;
        opportunity op = new opportunity();
        op.Name = accwrap.company;
        op.StageName ='prospecting';
        op.CloseDate = system.today()+15;
        op.AccountId = acc.Id;
        insert op;
        p = new pagereference ('/'+acc.Id);
        }
        catch(exception e)
        {
            database.rollback(sp);
            apexpages.Message msg = new apexpages.Message(apexpages.Severity.ERROR,e.getMessage());
            apexpages.addMessage(msg);
        }
        return p;
    }
}