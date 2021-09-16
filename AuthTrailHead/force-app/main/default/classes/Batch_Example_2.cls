global class Batch_Example_2 implements Database.Batchable<SObject>,Database.Stateful
{
    public Map<Id,List<string>>accMap;
    global Batch_Example_2()
    {
        accMap = new Map<Id,List<string>>();
    }
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id ,name,ownerId from account where createdDate = Last_N_Days:30';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.batchablecontext bc,List<Account>scope)
    {
        for(Account a: scope)
        {
            if(accMap.containskey(a.ownerId))
            {
                List<string> names = accMap.get(a.ownerId);
                names.add(a.name);
                accMap.put(a.ownerId,names);
            }
            else
            {
                List<string> names = new List<string>();
                names.add(a.name);
                accMap.put(a.ownerId,names);
            }
        }
    }
    global void finish(Database.BatchableContext bc)
    {
        set<Id> keys = accMap.keyset();
        Map<Id,string> userMap = new Map<Id,string>();
        List<user> users = [select id,email from user where id in : keys];
        for(user u: users)
        {
       		userMap.put(u.Id, u.email);     
        }
        List<Messaging.Email> emails = new List<Messaging.Email>();
        for(Id k: keys)
        {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            List<string> accounts = accMap.get(k);
            string body ='';
            for(string a : accounts)
            {
                body = body + '<br/>'+a;
            }
            msg.setSubject('your account');
            msg.setHtmlBody(body);
            string email = userMap.get(k);
            string [] toadd = new string[]{email};
            msg.setToAddresses(toadd);
            emails.add(msg);
        }
        Messaging.sendEmail(emails);
    }
}