public class CL_2807_INTG_RT_POSTALCODE
{
    public string postalcode{set;get;}
    public list<string> places {set;get;}
    
    public void GetPostalDetails()
    {
        places = new list<string>();
        
        string ep = 'https://api.postalpincode.in/pincode/'+postalcode;
        
        http p = new http();
        httpRequest req = new httpRequest();
        req.setEndpoint(ep);
        req.setMethod('GET');
        
        HttpResponse res = p.send(req);
        string body = res.getBody();
        
        system.JSONParser jp = json.createParser(body);
        while(jp.nextToken() != null)
        {
            if(jp.getText() == 'name')
            {
                jp.nextToken();
                places.add(jp.getText());
            }
        }
    }
}