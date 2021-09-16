public class Payment_Helper
{
    public static void beforeinsert(list<payment__c> payments)
    {
        for(payment__c p: payments)
        {
            if(p.Employee__c == null)
            {
                p.addError('Choose the Employee');
            }
        }
    }
    
    public static void afterinsert(list<payment__c> payments)
    {
        map<id,List<payment__c>> payMap = new map<id,List<payment__c>>();
        for(payment__c p: payments)
        {
            id empId = p.Employee__c;
            Boolean flag = payMap.containskey(empId);
            List<payment__c> payLists = new List<payment__c>(); 
            if(flag == true)
            {
                payLists = payMap.get(empId);
                payLists.add(p);
                payMap.put(empId,payLists);
            }
            else
            {
                payLists.add(p);
                payMap.put(empId,payLists);
            }
        }
        Map<id,decimal> empMap = new Map<id,decimal>();
        for(Id key: payMap.keyset())
        {
            List<payment__c> pays = payMap.get(key);
            decimal sum = 0.0;
            for(payment__c pa: pays)
            {
                sum = sum + pa.Amount__c;
            }
            empMap.put(key,sum);
        }
        list<employee__c> employees = [select total__c from employee__c where id in : empMap.keyset()];
        for(employee__c e: employees)
        {
            e.Total__c = e.Total__c + empMap.get(e.Id);
        }
        update employees;
    }
}