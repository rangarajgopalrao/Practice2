public class SCHEDULE_APEX_EG1 IMPLEMENTS SCHEDULABLE
{
	public void execute(schedulablecontext cs)
    {
        List<opportunity> opp = [select id,name,closedate from opportunity];
        for(opportunity eo: opp)
        {
            eo.closedate = system.today();
            update eo;
            
        }
        sentemail();
    }
    public void sentemail()
    {
        contact c = [select id,name,phone,email from contact where id='0032w000001a8jx'];
        messaging.singleemailmessage AP = new messaging.SingleEmailMessage();
        list<string> To = new list<string>{c.email,c.createdby.email};
        list<string> cc = new list<string>{'rangaraj.gopal3@gmail.com','rangarajgopalrao@gmail.com'};
        ap.setToAddresses(to);
        ap.setCcAddresses(cc);
        ap.setSubject('hello'+c.firstname +'welcome to air asia');
        ap.setplaintextbody('dear'+c.firstname + ' '+c.lastname +'we are happy to announce that your boarding time is scheduled.the following details are phone:' +c.phone);
        list<messaging.email> ap1 = new list<messaging.email>{ap};
        messaging.sendemail(ap1);
    }
}