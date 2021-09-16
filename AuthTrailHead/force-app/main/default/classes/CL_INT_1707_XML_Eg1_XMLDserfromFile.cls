public class CL_INT_1707_XML_Eg1_XMLDserfromFile
{
    public blob xmlfile{set;get;}
    
    public void XMLDserfromFile()
    {
        list<account> acc = new list<account>();
        string xmlstring = xmlfile.toString();
        xmlfile=null;
        
        dom.Document doc = new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root = doc.getRootElement();
        list<dom.XmlNode> branch = root.getChildElements();
        for(dom.XmlNode eb:branch)
        {
           account a = new account();
            a.Name = eb.getattributevalue('name',null);
            a.Phone = eb.getattributevalue('phone',null);
            a.Industry = eb.getattributevalue('industry type',null);
            acc.add(a);
        }
        insert acc;
    }
}