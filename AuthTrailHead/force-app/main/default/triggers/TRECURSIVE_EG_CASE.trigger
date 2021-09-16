trigger TRECURSIVE_EG_CASE on Case (before insert) 
{
    list<case> ca = trigger.new;
    HW_RECURSIVE_TR_CASE.systemcreatedcs(ca);
}