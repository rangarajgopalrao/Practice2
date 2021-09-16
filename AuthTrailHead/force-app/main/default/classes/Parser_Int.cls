public class Parser_Int {
    public void callme(){
        string nm;
        string ph;
        string rat;
        string js ='{"name":"yamuna 1","phone":"[040-2222,040-33222]","rating":"hot"}';
        
        system.JSONParser jp = json.createParser(js);   // step 1: create parser
        
        while(jp.nextToken() != null){ // check parser have success token
            if(jp.getText() =='name'){
                system.debug(jp.getText());
                jp.nextToken();
                system.debug(jp.getText());
                nm = jp.getText();
                system.debug('name: '+nm);
            }
            if(jp.getText() =='phone'){
                jp.nextToken();
                ph = jp.getText();
                system.debug('phone: '+ph);
            }
            if(jp.getText() =='rating'){
                jp.nextToken();
                rat = jp.getText();
                system.debug('rating: '+rat);
            }
        }
        account a = new account();
            a.Name = nm;
            a.Phone = ph;
            a.Rating = rat;
            insert a;
        system.debug(a);
    }
}