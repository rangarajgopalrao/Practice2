public class Employee_Handler
{
    public static void befordelete(map<id,employee__c> empmap)
    {
        set<id> empids = empmap.keyset();
        list<payment__c> payments = [select id from payment__c where employee__c in:empids];
        //list<payment__c> payments = [select id from payment__c where employee__c in:empmap.keySet()];
     	delete payments;
    }
}