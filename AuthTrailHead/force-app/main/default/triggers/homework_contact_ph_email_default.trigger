trigger homework_contact_ph_email_default on Contact (before insert) 
{
    list<contact> con = trigger.new;
    homework_contact_ph_email_default.default_phone_email(con);
}