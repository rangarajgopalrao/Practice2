public class DML_EX3 
{
    public account acc{set;get;}
    public list<contact>con{set;get;}
    public DML_EX3()
    {
       acc = new account();
       con = new list<contact>();
        add();
        //system.debug(add);
    }
    public void add()
    {
        contact c = new contact();  // empty field come by click on add button
        con.add(c);
    }
    public pagereference create()   // this is insert operation from line 17 to 26//
    {
        insert acc;
        for(contact ec:con)
        {
            ec.accountid = acc.id;
        }
        insert con;
        pagereference p = new pagereference('/'+acc.Id);
        return p;
    }
}