public class Inbound_Example1 implements messaging.InboundEmailHandler
{
    public messaging.inboundEmailResult handleinboundemail(messaging.InboundEmail emails, messaging.InboundEnvelope evp)
    {
       messaging.InboundEmailResult results = new messaging.InboundEmailResult();
        try
        {
            string fromadd = emails.fromAddress;
            string subject = emails.subject;
            string body = emails.plainTextBody;
            contact con=[select id,lastname from contact where email=:fromadd limit 1];
            case c = new case();
            c.subject = subject;
            c.Status = 'New';
            c.Origin = 'Email';
            c.Description = body;
            c.Priority = 'normal';
            insert c;
            results.success = true;
        }
        catch(exception e)
        {
            results.success = false;
        }
        return results;
    }
}