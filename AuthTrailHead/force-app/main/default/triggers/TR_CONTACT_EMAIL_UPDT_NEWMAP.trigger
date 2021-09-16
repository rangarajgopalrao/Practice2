trigger TR_CONTACT_EMAIL_UPDT_NEWMAP on Contact (before insert)
{
    map<id,contact> nm = trigger.newmap;
    map<id,contact> om = trigger.oldmap;
    set<id> ns = nm.keySet();
    set<id> os = om.keySet();
    list<contact> oc =[select id,email from contact where id in :os];
    list<contact> nc =[select id,email from contact where id in :ns];
    for(contact eoc: oc)
    {
        for(contact enc: nc)
        {
            if(eoc.id == enc.id)
            {
                if(eoc.email != enc.email)
                {
                    enc.email.adderror('you cannot edit or update email field');
                }
            }
        } 
    }
}