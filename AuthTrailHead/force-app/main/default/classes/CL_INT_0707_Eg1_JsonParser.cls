public class CL_INT_0707_Eg1_JsonParser {
    public string jsonstring {set;get;}
    public map<string,object> result {set;get;}
    public void jsonparsercomplex()
    {
        result = new map<string,object>();
        jsonstring ='{"status":"success","code":"200","Account":[{"name":"jpt1","Phone":"1234","Rating":"hot"},{"name":"jpt2","Phone":"2222","Rating":"cold"}],"Contact":[{"lastname":"Ravi","Phone":"5555"},{"lastname":"Ravi","Phone":"9855"},{"lastname":"Ganesh","Phone":"8555"}]}';
        // step 1 --- Create parser
        system.debug(jsonstring);
        system.JSONParser jp = json.createParser(jsonString);
        // step 2 --- loop for token if exists
        system.debug(jp);
        while(jp.nexttoken()!=null){
            //system.debug(jp);
            //step 3 find the required label as per requirement
            if(jp.getText()=='Account'){
                //step 4 move to next token for values/data
                 jp.nextToken();
                system.debug(jp);
                //step 5 convert the data to required SFDC format
                list<account> acc= (list<account>)jp.readValueAs(list<account>.class);
                //step 6 perform te action
                insert acc;
            }
            if(jp.getText()=='Contact'){
                jp.nextValue();
                list<contact> con = (list<contact>)jp.readValueAs(list<contact>.class);
                //insert con;
            }
        }
    }
}