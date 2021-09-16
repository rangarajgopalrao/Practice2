public class Lead_Send_Email_Trigger_Ex
{
    public static void callMe(List<lead>leads)
    {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        for(lead el: leads)
        {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            string [] toadd = new string[]{el.Email};
            msg.setToAddresses(toadd);
            string body ='Dear Customer <br/>';
            body = body + 'We have Received your enquiry with following details <br/>';
            body = body + 'Last Name' +el.LastName;
            body = body + 'First Name' +el.FirstName;
            body = body + 'Phone' +el.phone;
            body = body + 'Email' +el.email;
            body = body + 'Thanks <br/> Sales Team';
            msg.setHtmlBody(body);
            msg.setSubject('Lead Acknowledgement');
            mails.add(msg);
        }
        messaging.sendEmail(mails);
    }
}