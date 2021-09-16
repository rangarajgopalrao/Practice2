public class ShowAttachmentController {
public List<Attachment> contactAttachment         {get; set; }  
      
    public ShowAttachmentController() {
        contactAttachment = [select Id,name,ParentID,OwnerID,ContentType,CreatedDate,Description from Attachment];
    }
}