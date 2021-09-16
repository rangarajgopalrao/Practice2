trigger Lead_Validation_One on Lead (before insert)
{
    public list<lead> leads = trigger.new;
    for(lead l: leads)
    {
        if(l.leadsource=='web' || l.phone ==null)
        {
            l.adderror('Phone field cannot be blank');
        } 
    }
}