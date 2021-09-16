@istest
public class Test_Example_12
{
    @testsetup static void invoke()
    {
        lead l = new lead();
        l.LastName ='Gopal';
        l.FirstName = 'R';
        l.company= 'aba tech';
        insert l;
    }
    @istest public static void testme()
    {
        user u =[select id,firstname from user where alias='ST'];
        system.debug(u.firstname);
        integer count = [select count() from account];
        system.debug(count);
        Apex_Example_12 be = new Apex_Example_12();
        test.startTest();
        Id jobId = database.executeBatch(be, 5);
        test.stopTest();
        lead le = [select leadsource,rating from lead];
        system.assertEquals('web', le.LeadSource);
        system.assertEquals('warm', le.Rating);
        /* System.DmlException: Insert failed. First exception on row 0; first error: CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY,
         *  Lead_Validation_Two: execution of BeforeInsert

caused by: System.NullPointerException: Attempt to de-reference a null object

Trigger.Lead_Validation_Two: line 5, column 1: [] */
        
    }
}