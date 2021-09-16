public class TR_CLASS_RECURSIVE_OPP_EX1
{
	public static boolean flg = true;
    public static void oppdouble(list<opportunity> l)
    {
        for(opportunity eo:l)  			// once created opportunity automatic generate one more opportunity//
    {
        if(flg == true)
        {
            flg = false;
            {
                opportunity op = new opportunity();
                op.name = 'system generated'+ eo.name;
                op.StageName = 'prospecting';
                op.CloseDate = system.today();
                insert op;
            }
        }
    }
    }
}