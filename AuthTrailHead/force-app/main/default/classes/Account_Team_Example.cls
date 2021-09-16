public class Account_Team_Example 
{
    public static void create(list<account>accounts)
    {
        list<AccountTeamMember> teams = new list<AccountTeamMember>();
        user u =[select id from user where alias='st'];
        for(account a: accounts)
        {
            AccountTeamMember atm = new AccountTeamMember();
            atm.accountid = a.id;
            atm.userid = u.id;
            atm.TeamMemberRole = 'Account Manager';
            atm.AccountAccessLevel = 'Read';
            teams.add(atm);
        }
        insert teams;
    }
}