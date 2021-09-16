trigger TR_NEWMAP_CONTACT_CASE on Contact (after insert)
{
    map<id,contact> ct = trigger.newmap;
    set<id> ci = ct.keyset();
    CLASS_TR_NEWMAP_CONTACT_CASE.defaultcasegen(ci);
}