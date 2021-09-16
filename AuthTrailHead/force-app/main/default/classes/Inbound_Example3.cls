public class Inbound_Example3 implements messaging.inboundEmailHandler
{
    public messaging.InboundEmailResult handleInboundEmail(messaging.InboundEmail emails, messaging.InboundEnvelope evp)
    {
        messaging.InboundEmailResult results = new messaging.InboundEmailResult();
        try
        {
             messaging.InboundEmail.binaryAttachment[] files = emails.binaryAttachments;
             case c = new case();
             c.Subject = emails.subject;
             c.Status = 'New';
             c.Priority = 'Medium';
       		 c.Origin = 'Email';
       		 c.Description = emails.plainTextBody;
       		 insert c;
       		 list<attachment> attachments = new list<attachment>();
        	 for(messaging.InboundEmail.binaryAttachment b: files)
       		 {
           		 attachment a = new attachment();
           		 a.ParentId = c.Id;
           		 a.Body = b.body;
          	     a.Name = b.filename;
           		 attachments.add(a);
       		 }
       		 insert attachments;
       		 results.success = true;
        }
        catch(exception e)
        {
            results.success = false;
        }
        return results;
    }
}