public class Inbound_Example2 implements messaging.InboundEmailHandler
{
    public messaging.InboundEmailResult handleInboundEmail(messaging.InboundEmail emails, messaging.InboundEnvelope evp)
    {
        messaging.InboundEmailResult msg = new messaging.InboundEmailResult();
        try
        {
            contact c = new contact();
            c.LastName = 'Sangeeth';
            c.Email = emails.fromAddress;
            c.Description = emails.plainTextBody;
            insert c;
            msg.success = true;
        }
        catch(exception e)
        {
            msg.success = false;
        }
        return msg;
    }
}