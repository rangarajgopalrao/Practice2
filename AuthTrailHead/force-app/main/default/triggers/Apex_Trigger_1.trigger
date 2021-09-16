trigger Apex_Trigger_1 on Account (before insert)
{
    Apex_Example_10.callme(trigger.new);
}