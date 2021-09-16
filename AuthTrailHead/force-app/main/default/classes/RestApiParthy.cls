@RestResource(urlmapping='/cases/*')
global with sharing class RestApiParthy {
	/*@HttpGet
    global static case getCaseRecord(){
        RestRequest request = RestContext.request;
        system.debug('*****request****'+request);
        
        String caseId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        system.debug('*****caseId****'+caseId);
        
        case result = [Select caseNumber, Subject, Status, Origin From Case Where Id =:caseId];
        system.debug('*****result****'+result);
        return result;
    } */
    @HttpGet
    global static Boolean getCaseRecord(){
        RestRequest request = RestContext.request;
        system.debug('*****request****'+request);
        
        String caseId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        system.debug('*****caseId****'+caseId);
        
        case result = [Select Id, caseNumber, Subject, isClosed From Case Where Id =:caseId];
        system.debug('*****result****'+result);
        return result.isClosed;
    }
    @HttpPost
    global static Id CreateCase(){
        RestRequest request = RestContext.request;
        system.debug('*****request comes From Third Party**'+request);
        
        String response = request.requestBody.toString();
        system.debug('*****response From ThirdParty In Json Format**'+response);
        
        CaseWrap cW =(CaseWrap) JSON.deserialize(request.requestBody.toString(), CaseWrap.class);
        system.debug('*****Converted(deserialize) Json response to CaseWrapper class**'+cW);
        
        Case newCase = new Case();
        newCase.Status = cW.Status;
        newCase.Priority = cW.priority;
        //newCase.ContactId = cW.ContactId;
        //newCase.AccountId = cW.AccountId;
        Insert newCase;
        system.debug('***** we have created newCase based on Wrapper class instances and wrapper stores Json response**'+newCase);
        return newCase.Id;
    }
    Public class CaseWrap{
        public String Status;
        public string priority;
        public String ContactId;
        public String AccountId;
    }
}