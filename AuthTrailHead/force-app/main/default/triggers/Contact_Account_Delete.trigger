trigger Contact_Account_Delete on Contact (after delete)
{
    Contact_Delete_EX.callme(trigger.old);
}