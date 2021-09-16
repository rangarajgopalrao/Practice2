trigger lead_convert on Account (after insert)
{
    List<account> acc = trigger.new;
    system.debug(acc);
    List<customer__c> cu = new List<customer__c>();
    system.debug(acc);
    for(account ea: acc)
    {
        system.debug(ea);
        customer__c cus = new customer__c();
        system.debug(cus);
        cus.Name = ea.Name;
        system.debug(cus.Name);
        cus.Id = ea.Id;
        system.debug(cus.Id);
    }
}