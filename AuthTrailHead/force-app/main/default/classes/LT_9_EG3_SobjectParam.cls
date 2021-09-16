public class LT_9_EG3_SobjectParam 
{
	@Auraenabled
    public static Account callAcc()
    {
        Account Acc =[select id,name,phone,rating,industry from account limit 1];
        return Acc;
    }
}