trigger Opty_Share_Handler_Sathish on Opportunity (after update) {
    Opty_Share_Handler_Sathish.invoke(trigger.oldmap, trigger.newmap);
}