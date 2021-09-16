public class CL_INT_EG1_XML_User 
{
    public string xmlstring{set;get;}
    public string parsedata{set;get;}
    public void convertme()
    {
        dom.Document doc = new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root = doc.getRootElement();
        parsedata = root.getName();
        list<dom.XmlNode> childs = root.getChildElements();
        for(dom.XmlNode ec:childs)
        {
            parsedata = parsedata + '\n' +ec.getName();
            parsedata = parsedata +' : ' +ec.getText();
        }
    }
}