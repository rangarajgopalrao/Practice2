public class Poty_Share_Example
{
	public static void sharerecord(list<opportunity>optylist)
    {
        list<OpportunityShare> share = new list<OpportunityShare>();
        for(opportunity op: optylist)
        {
            if(op.StageName=='closed won')
            {
                OpportunityShare os = new OpportunityShare();
                os.OpportunityId = op.Id;
            	os.UserOrGroupId = op.manager__c;
            	os.OpportunityAccessLevel ='Read';
            	os.RowCause ='Manual';
            	share.add(os);
            }
        }
        insert share;
    }
}