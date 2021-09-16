public class CLASS_TR_NEWMAP_CONTACT_CASE
{
    public static void defaultcasegen(set<id>cid)
    {
        list<contact> nc = [select id,firstname,lastname,phone,email from contact where id in : cid];
        list<case> bucket = new list<case>();
        for(contact ec:nc)
        {
            if(ec.phone == null && ec.email==null)
            {
                case ce = new case();
                ce.origin = 'web';
                ce.subject = ec.firstname +'case was generated';
                ce.ContactId = ec.id;
                bucket.add(ce);
            }
            else if(ec.phone == null || ec.email==null)
            {
                case ce = new case();
                ce.origin = 'web';
                ce.subject = ec.lastname +'case was generated';
                ce.ContactId = ec.id;
                bucket.add(ce);
            }
        }
        insert bucket;
    }
}