public class Apex_Example_11
{
    public static void callme(Map<Id,opportunity> oldMap,Map<Id,opportunity> newMap)
    {
        Set<Id> keys = oldMap.keyset();
        for(Id k: keys)
        {
            opportunity old = oldMap.get(k);
            opportunity newopty = newMap.get(k);
            if(old.StageName != newopty.StageName && newopty.StageName =='Closedwon')
            {
                newopty.CloseDate = system.today();
            }
        }
    }
}