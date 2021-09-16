trigger opp_tr_ex on Account (after insert)
{
    OPP_TR_EX.callMe(trigger.new);
}