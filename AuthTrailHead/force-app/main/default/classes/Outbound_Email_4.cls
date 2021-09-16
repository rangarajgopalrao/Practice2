public class Outbound_Email_4
{
    public void fileattachment()
    {
        document d = [select name,body,contenttype from document where name='test'];
   		messaging.EmailFileAttachment eft1 = new messaging.EmailFileAttachment();
        eft1.setBody(d.Body);
        eft1.setFileName(d.Name);
        eft1.setContentType(d.ContentType);
        
        pagereference p = page.Test_Page;
        blob body = p.getContentAsPDF();
        messaging.EmailFileAttachment eft2 = new messaging.EmailFileAttachment();
        eft2.setBody(body);
        eft2.setFileName('InvoicePage.pdf');
        eft2.setContentType('pdf');
        messaging.EmailFileAttachment[] files = new messaging.EmailFileAttachment[]{eft1,eft2};
        
        emailtemplate et =[select id,name from emailtemplate where name='Account_Confirmation'];
        contact c = [select id,accountid from contact where phone='9848'];
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        msg.setTargetObjectId(c.Id);
        msg.setWhatId(c.AccountId);
        msg.setTemplateId(et.id);
        msg.setFileAttachments(files);
        
        messaging.email[] emails = new messaging.Email[]{msg};
            messaging.sendEmail(emails);
    }
}