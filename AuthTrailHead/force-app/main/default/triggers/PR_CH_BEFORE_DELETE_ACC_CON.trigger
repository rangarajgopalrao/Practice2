trigger PR_CH_BEFORE_DELETE_ACC_CON on Account (before DELETE) 
{
    list<account> acc =  trigger.old;
    list<account> ac = [select id from account where id not in (select accountid from contact)];
}