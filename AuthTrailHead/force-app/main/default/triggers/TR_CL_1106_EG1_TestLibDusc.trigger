trigger TR_CL_1106_EG1_TestLibDusc on Library__c (before insert)
{
	LIST<Library__c> LBK = trigger.new;
    for(Library__c ELB:LBK)
    {
       ELB.Price__c *=0.9; 
    }
}