trigger Acc_Team_Example on Account (after insert)
{
    Account_Team_Example.create(trigger.new);
}