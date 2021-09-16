trigger TR_CONTACT_EMAIL_UPDATE on Contact (before update)
{
list<contact> OC = trigger.old;
    list<contact> NC = trigger.new;
    for(contact EOC: OC)
    {
        for(contact ENC: NC)
        {
            if(EOC.Id == ENC.Id)
            {
                IF(EOC.Email != ENC.Email)
                {
                    ENC.Email.adderror('you cannot edit or update email field');
                }
            }
        }
    }
}