trigger Employee_Handler on Employee__c (before delete)
{
	Employee_Handler.befordelete(trigger.oldmap);
}