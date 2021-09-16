public class CL_INT_Eg2_JsonParser {
    public string B;
    public void jpexample2()
    {
        B = '{"Firstname":"Gopal","Lastname":"Rao","Customer":{"name":"Wipro","phone":"2345"},"salary":23140}';
        system.JSONParser j = json.createParser(B);
        while(j.nextToken()!=null){
            if(j.getText()=='customer')
            {
                j.nextToken();
                account ac = (account)j.readValueAs(account.class);
                insert ac;
            }
            if(j.getText()== 'salary')
            {
               j.nextToken();
                decimal money = (decimal)j.getDecimalValue();
                system.debug(money);
            }
            if(j.getText()=='firstname'){
                j.nextToken();
                string empname = j.getText();
                system.debug(empname);
            }
        }
    }
}