trigger Rec_Trigger on Account (before insert)
{
    Account_Recursive_Example.callMe();
}