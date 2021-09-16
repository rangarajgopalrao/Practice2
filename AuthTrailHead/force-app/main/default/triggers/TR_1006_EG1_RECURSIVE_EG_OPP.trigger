trigger TR_1006_EG1_RECURSIVE_EG_OPP on Opportunity (before insert) 
{
    list<opportunity> opp = trigger.new;
    CL_106_EG1_RECURSIVE_TRIGGER_EG.systemcreateopp(opp);
}