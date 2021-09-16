trigger Wk_Account on Account (before update) 
{
    for(account a: trigger.new)
        {
            if(a.Name != trigger.oldmap.get(a.Id).name)
            {
                system.debug('should not be same:'+trigger.oldmap.get(a.Id).name);
                a.wk_account__c += 1;
                system.debug('increment value'+a.wk_account__c);
            }
        }
   
}