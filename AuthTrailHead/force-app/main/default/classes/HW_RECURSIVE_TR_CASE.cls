public class HW_RECURSIVE_TR_CASE
{
	public static boolean flg = true;
    public static void systemcreatedcs(list<case>ca)
    {
        for(case ec:ca)
        {
            if(flg == true)
            {
                    flg = false;
                    case ce = new case();
                    ce.Origin = 'web';
                    ce.Status = 'new';
                    ce.Subject = 'system generated due to case record created';
                    insert ce;
            }
        }
    }
}