trigger tr_phone_email_blank on Contact (before insert,before update)
{
    list<contact> cc = trigger.new;
    Contacttrigusers__c bp = Contacttrigusers__c.getinstance(userinfo.getUserId());
    if(bp.Is_grant_access__c == true && bp.salary__c >10000)
    {
    homework_contact_ph_email_default.default_phone_email(cc);
    }
}