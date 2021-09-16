trigger opty_Tr_ex11 on Opportunity (before update) 
{
	Apex_Example_11.callme(trigger.oldmap,trigger.newmap);
}