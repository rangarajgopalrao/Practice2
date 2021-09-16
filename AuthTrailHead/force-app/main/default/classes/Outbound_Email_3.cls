public class Outbound_Email_3
{
    public void emailtemplate()
    {
        
        emailtemplate et = [select id from emailtemplate where name ='Account_Confirmation'];
        contact c = [select id,accountid from contact where phone ='9848'];
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        msg.setTemplateId(et.id);
        msg.setTargetObjectId(c.id);
        msg.setWhatId(c.AccountId);
        
        messaging.email[] emails = new messaging.Email[]{msg};
        messaging.sendEmail(emails); 
    }
    
    public void leademailtemplate()
    {
        emailtemplate et = [select id from emailtemplate where name ='Lead_Ack'];
        lead l = [select id from lead where phone ='12345'];
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        msg.setTemplateId(et.id);
        msg.setTargetObjectId(l.id);
        
        messaging.email[] emails = new messaging.Email[]{msg};
        messaging.sendEmail(emails); 
    }
    public void usingmap()
    {
         emailtemplate et = [select id from emailtemplate where name ='Update_Details'];
        map<id,lead> leads = new map<id,lead>([select id from lead where createddate=today]);
        list<id> leadids = new list<id>(leads.keyset());
        messaging.MassEmailMessage msg = new messaging.MassEmailMessage();
        msg.setTargetObjectIds(leadids);  //250 send emails per cycle
        msg.settemplateid(et.Id);
        messaging.Email[] emails = new messaging.Email[]{msg};
        messaging.sendEmail(emails);
    }
}