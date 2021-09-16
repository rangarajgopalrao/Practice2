trigger Tr_Opp_Date on Opportunity (before insert,before update) 
{
	Map<id,opportunity> oldmap = trigger.oldmap;
    Map<id,opportunity> newmap = trigger.newmap;
}