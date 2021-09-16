@RestResource(urlMapping='/v1/AccountMgmt/')
global class Rest_WebService_Ex1_Acc
{
	@httpGet
    global static Account doGetMethod(){
        //Account acc= new Account();
        RestRequest req = RestContext.request;
        Map<String,String> paramsMap = req.params;
        String accid=paramsMap.get('id');
        Account acc = [select id,name,AnnualRevenue,Rating from Account where Id =:accid];
        return acc;
    }
 
    @httpDelete
    global static String doDeleteMethod(){
        //Account acc= new Account();
        RestRequest req = RestContext.request;
        Map<String,String> paramsMap = req.params;
        String accid=paramsMap.get('id');
        Account acc = [select id,name,AnnualRevenue from Account where Id =:accid];
        delete acc;
        return 'You have deleted the record succesfully!';
    }
 
   @httpPost
    global static Account doPostMethod(String Name, Integer AnnualRevenue){
        Account acc= new Account(Name =name,AnnualRevenue = annualrevenue);
        insert acc;
        return acc;
    }
   @httpPut
    global static Account doPutMethod(String Name, Integer AnnualRevenue){
        RestRequest req = RestContext.request;
        Map<String,String> paramsMap = req.params;
        String accid=paramsMap.get('id');
        Account acc= new Account(Name =name, AnnualRevenue = annualrevenue, Id =accid);
        update acc;
        return acc;
      }
}