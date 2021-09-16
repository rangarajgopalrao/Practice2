public class Contact_Update_Controller
{
    public Account acc{set;get;}
    public list<contact> contacts {set;get;}
    public Contact_Update_Controller(apexpages.StandardController controller)
    {
        string [] fields = new string[]{'name','industry','phone','rating'};
            controller.addFields(fields);
      acc = (account)  controller.getRecord();
        contacts =[select id,firstname,lastname,phone,email from contact where accountid =:acc.Id];
    }
    public pagereference invoke()
    {
        list<messaging.SingleEmailMessage> emails = new list<messaging.SingleEmailMessage>();
        for(contact c: contacts)
        {
            messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
            List<string> toadd = new List<string>{c.email};
            string body = 'Dear '+c.Firstname;
            body = body+'<br/> Update your contact details <br/>';
            body = body+'Email :'+c.email+'<br/> Phone :'+c.Phone+'<br/>Thanks<br/>Sales Team';
            msg.setToAddresses(toadd);
            msg.setHtmlBody(body);
            msg.setSubject('Update contact Details');
            emails.add(msg);
        }
        messaging.sendEmail(emails);
        pagereference p = new pagereference('/'+acc.Id);
        return p;
    }
}