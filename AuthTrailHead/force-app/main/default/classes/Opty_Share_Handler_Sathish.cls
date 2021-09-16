public class Opty_Share_Handler_Sathish
{
    public static void invoke(map<id,opportunity> oldmap,map<id,opportunity> newmap)
    {
        set<id> optyIds = oldmap.keyset();
        list<OpportunityTeamMember> share = new list<OpportunityTeamMember>();
        for(id key: optyIds)
        {
            opportunity old = oldmap.get(key);
            opportunity newopt = oldmap.get(key);
            if(old.ownerid != newopt.ownerid)
            {
                OpportunityTeamMember otm = new OpportunityTeamMember();
                otm.OpportunityId = key;
                otm.OpportunityAccessLevel = 'Edit';
                otm.UserId = old.ownerid;
                otm.TeamMemberRole = 'Account Manager';
                share.add(otm);
            }
        }
        insert share;
    }
}