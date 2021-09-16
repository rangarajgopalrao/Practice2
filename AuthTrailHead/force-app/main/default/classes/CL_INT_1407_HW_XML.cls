public class CL_INT_1407_HW_XML
{
    public string xmlstring{set;get;}
    
    public CL_INT_1407_HW_XML()
    {
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createRootElement('apex:page',null,null);
        dom.XmlNode stem = root.addChildElement('apex:pageblock',null,null);
        dom.XmlNode branch1 = root.addChildElement('apex:pageblockSection',null,null);
        branch1.addTextNode('Pooja Hegde');
        dom.XmlNode branch2 = root.addChildElement('apex:pageblockSection',null,null);
        branch2.addTextNode('Gopal');
        dom.XmlNode branch3 = root.addChildElement('apex:pageblockSection',null,null);
        dom.XmlNode branch4 = branch3.addChildElement('apex:pageblockSectionItem',null,null);
        branch4.addTextNode('Tamannaah');
        xmlstring = doc.toXmlString();
    }
}