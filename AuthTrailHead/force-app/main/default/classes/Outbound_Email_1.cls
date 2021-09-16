public class Outbound_Email_1
{
    public void outboundEmail()
    {
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        string [] toadd = new string []{'rangaraj.gopal3@gmail.com'};
        string [] bccadd = new string []{'rangaraj.gopal3@gmail.com'};
        string [] ccadd = new string []{'rangarajgopalrao@gmail.com'};
        msg.setToAddresses(toadd);
        //msg.setBccAddresses(bccadd);
        msg.setCcAddresses(ccadd);
        msg.setSubject('Test Mail For Outbound');
        msg.setPlainTextBody('This is Test Email sent using apex class');
        
        messaging.SingleEmailMessage msg2 = new messaging.SingleEmailMessage();
        msg2.setToAddresses(toadd);
        msg2.setSubject('HTML Body Test Message');
        string body = ('<h1> Dear Customer,<br/><br/>');
        body = body + ('Your request is received with following details <br/>');
        body = body + ('Name : <i> Shiva </i> <br/>');
        body = body + ('Phone : <i> 040-1234 </i> <br/> <br/> Thanks <br/> Sales Team <br/><br/></h1>');
        msg2.setHtmlBody(body);
        msg2.setSenderDisplayName('SFDC Development');
        msg2.setInReplyTo('rangaraj.gopal2@gmail.com');
        messaging.Email[] emails = new messaging.Email[]{msg,msg2};
        messaging.sendEmail(emails);
    }
}