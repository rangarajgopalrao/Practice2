trigger Cus_Setting_example on Account (before insert)
{
    Test_Data__c T = Test_Data__c.getInstance(userInfo.getUserId());
    if(t.active__c  == true)
    {
        for(account a: trigger.new)
        {
            a.rating = 'hot';
            a.phone = '040-3222';
            //a.name = 'custom setting trigger example';
            a.ownership ='public';
        }
    }
}