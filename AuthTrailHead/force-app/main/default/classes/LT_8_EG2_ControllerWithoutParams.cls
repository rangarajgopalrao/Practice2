public class LT_8_EG2_ControllerWithoutParams
{
	@AuraEnabled
    public static Account InvokeACC()
    {
        Account ACC = [select Id,name,phone,industry,fax,rating from account where id='0012w00000HJVKsAAP'];
        return ACC;
    }
}