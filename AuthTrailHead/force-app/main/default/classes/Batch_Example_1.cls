global class Batch_Example_1 implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query = 'select id,name,ownership,rating from account where createdDate=Last_N_Weeks:2';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Account>scope)
    {
        for(account a: scope)
        {
            a.ownership ='Public';
            a.type ='New Customer';
            a.industry = 'Energy';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc)
    {
        AsyncApexJob jb = [SELECT Id,JobItemsProcessed,JobType,NumberOfErrors,TotalJobItems FROM AsyncApexJob where id =:bc.getJobId()];
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        string [] toadd = new string []{'rangaraj.gopal2@gmail.com'};
        msg.setToAddresses(toadd);
        string body ='Dear Admin<br/> Batch Operation with job id :<b>'+jb.Id;
        body = body +'</b> <br/><br/> Processed Succesfully <br/> Total Job Items : <b>'+jb.TotalJobItems;
        body = body +'</b> <br/><br/> No.of Errors :<b>'+jb.NumberOfErrors;
        msg.setSubject('Batch Status');
        msg.setHtmlBody(body);
        Messaging.Email[] emails = new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
        
        Schedule_Example2 sc = new Schedule_Example2();
        string cron = '0 30 11 15 08 ?';
        system.schedule('example', cron, sc);
    }
}