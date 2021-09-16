public class PR_CHILD_OPP_AMOUNT {
	public List<Account> Accounts;
    Public List<Opportunity> OptyList;
    public List<Decimal> amtList;
    public void callMe(){
        Accounts=[select name,phone,industry,rating,(select name,stageName,CloseDate,amount from opportunities) from Account];
        OptyList=new List<Opportunity>();
        amtList=new List<Decimal>();
        for(Account a:Accounts){
            for(Opportunity op:a.opportunities){
                if(op.CloseDate==system.today()){
                    amtList.add(op.Amount);
                }
            }
            
        }
        system.debug(Accounts);
            system.debug(amtList);
    }
    
}