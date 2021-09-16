public class TR_CLASS_HW2_CASE_CONTACT 
{
    public static void defaultcase(list<contact> c)
    {
        list<case> cs = new list<case> ();
        for(contact ec: c)
        {
            if(ec.phone == 'null' && ec.email == 'null')
            {
                case ce = new case();
                ce.origin = 'web';
                ce.subject = 'case generated';
                ce.ContactId = ec.id;
                cs.add(ce);
                
            }
            
           if(ec.phone == 'null'|| ec.email == 'null')
            {
                case ce = new case();
                ce.origin = 'web';
                ce.subject= 'case generated';
                ce.ContactId=ec.id;
                cs.add(ce);
            }
            
        }
        insert cs;
    } 
}