trigger TR_CON_EMAIL_ERROR_TROLD_TRNEW on Contact (before UPDATE)
{
    list<contact> NC = trigger.new;
    list<contact> OC = trigger.old;
    for(contact EOC:OC)
    {
        for(contact ENC:NC)
        {
            IF(EOC.ID == ENC.ID && EOC.EMAIL != ENC.EMAIL)
            {
                ENC.EMAIL.ADDERROR('SORRY YOU CANNOT EDIT EMAIL ONCE CREADTED');
            }
        }
    }
}