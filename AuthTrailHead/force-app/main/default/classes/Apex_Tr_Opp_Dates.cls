public class Apex_Tr_Opp_Dates 
{
    public static void oppdate(Map<id,opportunity>oldmap, Map<id,opportunity>newmap)
    {
        set<id> oldkeys = oldmap.keyset();
        for(id k: oldkeys)
        {
            opportunity oldopty = oldmap.get(k);
            opportunity newopty = newmap.get(k);
            if((oldopty.start_date__c <= newopty.start_date__c && oldopty.closedate >= newopty.start_date__c)||
               (oldopty.start_date__c <= newopty.CloseDate && oldopty.CloseDate <= newopty.CloseDate))
            {
                newopty.start_date__c.adderror('slot already booked');
            }
        }
    }
}