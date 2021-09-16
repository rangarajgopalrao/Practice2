public class CL_INT_1407_XML_EG2 
{
    public string xmlstring{set;get;}
    public CL_INT_1407_XML_EG2(){
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createrootelement('state',null,null);
        //root.addChildElement('Telangana', null, null);
        dom.XmlNode branch = root.addchildelement('capital',null,null);
        //branch.addTextNode('Hyderabad');
        dom.XmlNode branch2 = branch.addchildelement('TS-CM',null,null);
        branch2.addTextNode('Gopal');
        xmlstring = doc.toXmlString();
    }
}