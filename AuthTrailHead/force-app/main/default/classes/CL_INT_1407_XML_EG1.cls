public class CL_INT_1407_XML_EG1 
{
    public string xmlstring{set;get;}
    public CL_INT_1407_XML_EG1()
    {
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createrootelement('Employee',null,null);
        dom.XmlNode trunk = root.addchildelement('Main',null,null);
        dom.XmlNode trunk2 = root.addchildelement('contractor',null,null);
        dom.XmlNode branch1 = trunk.addchildelement('name',null,null);
        branch1.addTextNode('Rupom');
        dom.XmlNode branch2 = trunk2.addchildelement('name',null,null);
        branch2.addTextNode('Gopal');
        xmlstring = doc.toXmlString();
    }
}