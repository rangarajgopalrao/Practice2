public class Document_Serealize_Desear_Int
{
    public void AttchmentCall(){
        document d = [select id,name,body from document where name='test_1'];
        /* string js2 = json.serialize(d);   // simple document serialization
        system.debug(js2);
        
        blob att = (blob) json.deserialize(js2, blob.class); // simple document deserialization
        system.debug(att); */
        
        // dynamic or complex document serialization
        system.JSONGenerator jG = json.createGenerator(true);
        jG.writeStartObject();
        jG.writeBlobField('attchment', d.body);
        jG.writeEndObject();
        string res = jG.getAsString();
        system.debug(res);
        
        system.JSONParser jP = json.createParser(res); // dynamic or complex document deserialization
        while(jP.nextToken() !=null){
            if(jP.getText() =='attchment'){
                jP.nextToken();
                blob doc =(blob) jP.getBlobValue();
                system.debug(doc);
            }
        }
    }
}