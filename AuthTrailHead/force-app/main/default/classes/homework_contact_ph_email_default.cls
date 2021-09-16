public class homework_contact_ph_email_default 
{
    public static void default_phone_email(list<contact>c)
    {
        for(contact ec: c)
        {
            if(ec.phone == null && ec.email == null)
            {
                ec.phone = '900000';
                ec.email = 'no@gmail.com';
            } 
        }
    }
}