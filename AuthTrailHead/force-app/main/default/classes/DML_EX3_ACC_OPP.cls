public class DML_EX3_ACC_OPP
{
    public account acc{set;get;}
    public list<opportunity>opp {set;get;}
    public DML_EX3_ACC_OPP()
    {
        acc = new account();
        opp = new list<opportunity>();
        add();
    }
    public void add()
    {
        opportunity op = new opportunity();
        opp.add(op);
    }
    /*public void remove()
    {
        opportunity op = new opportunity();
        opp.clear(op);
    }*/
    public pagereference save()
    {
        insert acc;
        for(opportunity eop:opp)
        {
            eop.accountId=acc.id;
        }
        insert opp;
        pagereference p = new pagereference('/'+acc.Id);
        return p;
    }
}