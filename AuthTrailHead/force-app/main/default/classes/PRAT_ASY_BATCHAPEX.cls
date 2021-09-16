global class PRAT_ASY_BATCHAPEX implements Database.Batchable<sObject>
{
	Global Database.QueryLocator Start(Database.BatchableContext BC)
    {
        String Query = 'select id from lead';
        Return Database.getquerylocator(query);
    }
    Global void execute(Database.BatchableContext BC,list<sobject> records)
    {
       delete records; 
    }
    Global void finish(Database.batchableContext BC)
    {
        sendemail();
    }
     public void sendemail()
    {
     	Contact C = [Select Firstname,LastName,Email,Phone,createdby.Email from contact where id='0032w000005I15T'];
        Messaging.SingleEmailMessage EM = New Messaging.SingleEmailMessage();
        List<String> TOAdddddd = New List<String> {c.Email,c.createdby.Email};
      List<String> CopyAd = New List<String> {'rangarajgopalrao@gmail.com','ranagaraj.gopal3@gmail.com'};
          EM.setToAddresses(TOAdddddd);
       EM.setCcAddresses(CopyAd);
         EM.setSubject('Hi '+C.FirstName + 'Batch Apex successfully completed');
       EM.setPlainTextBody('Dear '+C.FirstName + ' '+C.LastName +'We are happy that you are learning SFDC Devlopment. The following are the details Phone:'+C.Phone);
        List<Messaging.Email> SEM = New List<Messaging.Email> {EM};   // ----- Creating the list
      Messaging.sendEmail(SEM);
    }
}