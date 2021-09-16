public class DisplayCaseAttachments {
	public string text                  {get;set;}
    public Attachment att         {get;set;}
    public list<String> caseNumberList  {set;get;} 
    
    public DisplayCaseAttachments(){
        caseNumberList = new list<String>();
        list<Case> caseList = [select id, caseNumber from case];
        for(Case c:caseList){
            caseNumberList.add(c.caseNumber);
        }
    }
    public void getAttachments(){
        //if(caseNumberList.contains('text')){
            system.debug('caseNumberList : '+caseNumberList.contains('text'));
            Case cs = [select id,casenumber,(select id from attachments) from case where casenumber =:'text'];
            att = cs.attachments; 
        system.debug('cs'+cs);
       // }
        
    }
}