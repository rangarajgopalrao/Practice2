public class Utrace_Integration 
{
    public string IpAddress				{set;get;}
    public List<String>HeaderKeys		{set;get;}
    public Map<String,Object>HeaderMap	{set;get;}
    public string BodyResult			{set;get;}
    public Map<String,Object>BodyResMap	{set;get;}
    public void trace(){
        HeaderKeys = new List<String>();
        Http p = new Http();
        // Create End Point
        string endpoint ='http://xml.utrace.de/?query='+IpAddress;
        HttpRequest request = new HttpRequest();
        //Set End Point to which you want to make request
        request.setEndpoint(endpoint);
        // Set the Method
        request.setMethod('GET');
        // Send the Request and Get the Response
        HttpResponse response = p.send(request);
        HeaderKeys = response.getHeaderKeys();
        HeaderMap = new Map<String,Object>();
        // Take one by one key from the Response Header and get their values and put them in Map
        for(String s: HeaderKeys){
            Object res = response.getHeader(s);
            HeaderMap.put(s,res);
        }
        // Get Response Body store in BodyResult
        BodyResult = response.getBody();
        BodyResMap = new Map<String,Object>();
        // Create DOM for desearealize the xmlResult(BodyResult)
        DOM.Document doc = new DOM.Document();
        doc.load(BodyResult);
        DOM.XmlNode root = doc.getRootElement();
        List<DOM.XmlNode> Child = root.getChildElements();
        List<DOM.XmlNode> SubChilds = Child[0].getChildElements();
        for(DOM.XmlNode sc: SubChilds){
            if(sc.getText() != null){
                BodyResMap.put(sc.getName(), sc.getText());
            }
        }
    }
}