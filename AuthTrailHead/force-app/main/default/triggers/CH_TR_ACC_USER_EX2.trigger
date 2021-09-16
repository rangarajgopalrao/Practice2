trigger CH_TR_ACC_USER_EX2 on Account (before insert) 
{
    list<account> ac = trigger.new;
    user u = [select id from user where username like '%wil%'];
    for(account ea: ac)
    {
        if(ea.industry == 'finance')
        {
            ea.OwnerId = u.Id;
        }
    }
}