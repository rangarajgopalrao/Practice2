public class Batch_BirthDay_Wish implements database.Batchable<contact>
{
    public Iterable<contact> start(database.BatchableContext bc){
        List<contact> ConQuery = [select name,email,birthdate from contact where birthdate=:date.today() and email !=null];
        system.debug(ConQuery);
        return ConQuery;
    }
    public void execute(database.BatchableContext bc, List<contact>conEmail){
        List<messaging.Email> emails = new List<messaging.Email>();
        for(contact c: conEmail){
            List<string> toAdd = new List<string>{c.email};
            messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
            msg.setToAddresses(toAdd);
            string body = '<html> <body> Hi'+c.name+',<br/> Happy BirthDay.<br/><b>Regards,</b><br/>Admin</body></html>';
            msg.setHtmlBody(body);
            emails.add(msg);
        }
        messaging.sendEmail(emails);
    }
    public void finish(database.BatchableContext bc){
        
    }
}