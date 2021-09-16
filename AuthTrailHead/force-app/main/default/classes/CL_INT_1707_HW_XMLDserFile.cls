public class CL_INT_1707_HW_XMLDserFile
{
    public blob xmlfile{set;get;}
    public string parsedata{set;get;}
    
    public void XMLDserFile()
    {
    	string stringxml = xmlfile.toString();
        xmlfile=null;
        
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.getRootElement();
        list<dom.XmlNode> branch = root.getChildElements();
        for(dom.XmlNode eb: branch)
        {
            branch = new list<dom.XmlNode>();
         parsedata = parsedata +'\n'+ eb.getName();
         parsedata = parsedata +' : '+ eb.getText();
        // parsedata = parsedata + eb.getAttributeValue('countrycode', null);
        }
    }
}