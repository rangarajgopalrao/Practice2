trigger TR_RECURSIVE_OPP_EX1 on Opportunity (after insert)
{
    list<opportunity> OP = trigger.new;
    TR_CLASS_RECURSIVE_OPP_EX1.oppdouble(op);
}