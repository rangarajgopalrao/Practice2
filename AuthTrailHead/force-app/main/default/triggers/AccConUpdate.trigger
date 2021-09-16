trigger AccConUpdate on Contact (after insert,after update)
{
    set<id>AccIds = new set<id>();
    system.debug(AccIds);
    List<Account> AccList = new List<Account>();
    system.debug(AccList);
    for(contact c: Trigger.new){
        if(c.accountid !=null && c.email != null){
            AccIds.add(c.AccountId);
            system.debug(AccList);   
        }
    }
    Map<id,account> accMap = new map<id,account>([select id,description from account where id in:Accids]);
    system.debug(accMap);
    for(contact ec: trigger.new){
         account acc = accMap.get(ec.AccountId);
        system.debug(accMap.get(ec.AccountId));
        system.debug(acc);
        acc.description = ec.email;
        system.debug(acc.description);
        AccList.add(acc);
        system.debug(AccList);
    }
    update AccList;
    system.debug(AccList);
}