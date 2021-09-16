public class Opportunity_Team_Example
{
    public static void create(list<opportunity>optylist)
    {
        list<OpportunityTeamMember> teams = new list<OpportunityTeamMember>();
        user u =[select id from user where alias='st'];
        for(opportunity op: optylist)
        {
            OpportunityTeamMember otm = new OpportunityTeamMember();
            otm.OpportunityId = op.id;
            otm.UserId = u.Id;
            otm.OpportunityAccessLevel ='Edit';
            otm.TeamMemberRole = 'opportunity manager';
            teams.add(otm);
        }
        insert teams;
    }
}