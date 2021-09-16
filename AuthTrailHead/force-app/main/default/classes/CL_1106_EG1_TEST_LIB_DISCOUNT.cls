@istest
public class CL_1106_EG1_TEST_LIB_DISCOUNT
{
    public static testmethod void testdisc()
    {
        Library__c Lib = new Library__c(name='wings of fire',Price__c=1000);
        insert Lib;
        Lib = [select Price__c from Library__c where id = :Lib.Id];
        system.assertEquals(900, Lib.Price__c);
        system.assertEquals(800, Lib.Price__c);
    }
}