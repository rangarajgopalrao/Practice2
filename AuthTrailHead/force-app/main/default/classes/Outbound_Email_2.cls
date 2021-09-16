public class Outbound_Email_2
{
    public void ListofEmail()
    {
        list<lead> l = [select id,lastname,firstname,phone,email from lead where createddate=today];
        list<messaging.Email> emails = new list<messaging.Email>();
        for(lead el: l)
        {
            messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
            string [] toadd = new string[]{el.email};
            string body = ('<h2> Dear Customer, <br/>');
            body = body + ('Your service request is received with following details <br/>');
            body = body + ('<b> Last Name :</b><i>'+ el.lastname + '</i> <br/>');
            body = body + ('<b> First Name :</b><i>'+ el.firstname + '</i> <br/>');
            body = body + ('<b> Phone :</b> <i>'+ el.phone + '</i><br/>');
            body = body + ('<b> Email :</b> <i>' + el.email + '</i><br/><br/>');
            body = body + ('Thanks <br/> Gopal');
            msg.setToAddresses(toadd);
            msg.setSubject('Lead Service Request');
            msg.setSenderDisplayName('Support Team');
            msg.setInReplyTo('rangarajgopalrao@gmail.com');
            msg.setHtmlBody(body);
            emails.add(msg);
        }
        messaging.sendEmail(emails);
    }
}