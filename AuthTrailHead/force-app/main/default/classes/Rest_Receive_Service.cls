@RestResource (urlmapping='/create account/*')
Global class Rest_Receive_Service 
{
    @httppost
    Global static String callme(String name,String phone, String industry)
    {
        System.JSONGenerator js = json.createGenerator(TRUE);
        js.writeStartObject();
        Try
        {
            account a = New account();
            a.name= name;
            a.industry = industry;
            a.phone = phone;
            insert a;
            js.writeStringField('Status','Success');
            js.writeStringField('AccountId', a.Id);
        }
        catch(exception e)
        {
            js.writeStringField('Status','Failed');
            js.writeStringField('Account Id', e.getMessage());
        }
        js.writeEndObject();
        String result = js.getAsString();
        return result;
    }
}