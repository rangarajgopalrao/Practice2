trigger Ch_TR_contact_ex1 on Contact (before insert)
{
    list<contact> c = trigger.new;
    for(contact ec:c)
    {
        if(ec.mailingcity == 'hyderabad')
        {
            ec.otherphone = '9032822247';
        }
    }
}