public class CL_106_EG1_RECURSIVE_TRIGGER_EG 
{
	public static boolean flg = true;
    public static void systemcreateopp(list<opportunity>opp)
    {
        if(flg == true)
        {
            flg = false;
            {
                for(opportunity eo:opp)
                {
                   opportunity o = new opportunity();
                    o.name = 'system created ' +eo.name;
                    o.StageName = 'qualification';
                    o.closedate = system.today();
                    insert o;
                }
            }
        }
    }
}