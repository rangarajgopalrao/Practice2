public class LT_9_CreateAccountSobject
{
	@Auraenabled
    public Static String DisplaySingleAcc(Account ACC)
    {
        String Result;
        Try
        {
            Insert ACC;
            Result = 'success'+acc.Id;
        }
        catch(exception e)
        {
            Result = 'Failure'+e.getMessage();
        }
        Return result;
    }
}