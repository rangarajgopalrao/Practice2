public class CH_ACCOUNT_INFORM_EX1
{
    public List<account> acc{set;get;}
    public List<CH_WRAPPERACCOUNT_EX1> Accwrap{set;get;}
    public List<account>SelectedAcc{set;get;}
    
    public CH_ACCOUNT_INFORM_EX1()
    {
        acc = [select name,type,industry,rating from account limit 20];
        Accwrap = new List<CH_WRAPPERACCOUNT_EX1>();
        for(account ea: acc)
        {
           CH_WRAPPERACCOUNT_EX1 AW = new CH_WRAPPERACCOUNT_EX1();
            aw.flag = true;
            aw.a = ea;
            Accwrap.add(aw);
        }
    }
    public void submit()
    {
        SelectedAcc = new list<account>();
        for(CH_WRAPPERACCOUNT_EX1 EAW: Accwrap)
        {
            if(eaw.flag == true)
            {
                SelectedAcc.add(eaw.a);
            }
        }
    }
}