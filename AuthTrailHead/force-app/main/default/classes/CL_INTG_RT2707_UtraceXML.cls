public class CL_INTG_RT2707_UtraceXML
{
    public string ipaddress{set;get;}
    public string body{set;get;}
    public string status{set;get;}
    public string data {set;get;}
    public map<string,object> res {set;get;}
    public void callUtrace()
    {
        res = new map<string,string>();
        string endpoint = 'http://xml.utrace.de/?query='+ipaddress;
        http p = new http();
        httpRequest request = new httpRequest();
        Request.setEndpoint(endpoint);
        Request.setMethod('GET');
        
        httpResponse Response = p.send(request);
        body = Response.getBody();
        
        dom.Document doc = new dom.Document();
        doc.load(body);
        dom.XmlNode root = doc.getRootElement();
        list<dom.XmlNode> result = root.getChildElements();
        dom.XmlNode parent = result[0];
        list<dom.XmlNode> data = parent.getChildElements();
        for(dom.XmlNode ed: data)
        {
            res.put(ed.getName(), ed.getText());
        }
    }
}