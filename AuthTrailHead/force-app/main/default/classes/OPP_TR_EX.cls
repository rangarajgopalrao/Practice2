public class OPP_TR_EX
{
    public static void callMe(list<account>acc)
    {
        list<opportunity> opp = new list<opportunity>();
        for(account ea: acc)
        {
            if(ea.industry == 'Banking'){
                opportunity op = new opportunity();
                op.name = ea.name;
                op.AccountId = ea.Id;
                op.StageName = 'prospecting';
                op.CloseDate = system.today() + 15;
                opp.add(op);
            }
        }
        insert opp;
    }
}