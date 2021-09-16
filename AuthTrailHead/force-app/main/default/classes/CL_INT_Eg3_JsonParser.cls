public class CL_INT_Eg3_JsonParser {
	public string C;
    //public list<account>ac;
    public void jsonEx3()
    {
      C ='{"Message":"Number of pincode(s) found:2","Status":"Success","PostOffice":[{"Name":"Mathrusri Nagar","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Andhra Pradesh","District":"K.V.Rangareddy","Division":"Secunderabad","Region":"Hyderabad City","Block":"Serilingampally","State":"Telangana","Country":"India","Pincode":"500049"},{"Name":"Miyapur","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Delivery","Circle":"Andhra Pradesh","District":"Hyderabad","Division":"Secunderabad","Region":"Hyderabad City","Block":"Tirumalagiri","State":"Telangana","Country":"India","Pincode":"500049"}]}';  
      system.JSONParser jp = json.createParser(C);
        while(jp.nextToken()!=null) 
        {
            if(jp.getText()=='postoffice'){
                jp.nextToken();
                list<account> ac = (list<account>)jp.readValueAs(list<account>.class);
                insert ac;
               /*string names = jp.getText();
                system.debug(names);*/
            }
        }
    }
}