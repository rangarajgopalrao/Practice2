public class Json_SOQL_Basic
{
    public void creteJson()
    {
    	system.JSONGenerator js = json.createGenerator(true);
        js.writeStartObject();
        try{
            List<Account> acc = [select id,name,phone,industry from account where industry !=null];
            for(account ea: acc){
                js.writeStringField('name', ea.name);
                if(ea.phone != null ){
                    js.writeStringField('phone', ea.phone);
                    js.writeStringField('industry', ea.industry);
                }
                js.writeStringField('status', 'success');
                js.writeNumberField('code', 200);
            }
        }
        catch(exception e){
            js.writeStringField('ea.name', 'name');
            js.writeStringField('ea.phone', 'phone');
            js.writeStringField('status', 'failed');
            js.writeNumberField('code', 100);
        }
        js.writeEndObject();
        string result = js.getAsString();
        system.debug('json rsults : '+result);
    }
}