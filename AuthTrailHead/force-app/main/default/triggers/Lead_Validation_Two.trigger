trigger Lead_Validation_Two on Lead (before insert) 
{
    list<lead> newleads = trigger.new;
    list<lead> oldleads = trigger.old;
    for(lead ol: oldleads)
    {
        for(lead nl: newleads)
        {
            if(ol.id == nl.Id)
            {
                if(ol.email != nl.email)
                {
                    nl.addError('This EmailId already exist');
                }
            }
        }
    }
}