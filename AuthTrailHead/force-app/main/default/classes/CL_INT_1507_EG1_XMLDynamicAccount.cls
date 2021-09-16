public class CL_INT_1507_EG1_XMLDynamicAccount {
    public string xmlstring{set;get;}
    
    public CL_INT_1507_EG1_XMLDynamicAccount(){
        list<account> acc =[select name,phone,industry from account where phone != null and industry != null limit 8];
        dom.Document doc = new dom.Document();
        dom.XmlNode root = doc.createRootElement('accounts',null,null);
        for(account ea:acc){
            dom.XmlNode branch = root.addchildelement('account',null,null);
            branch.setAttribute('name', ea.name);
            branch.setAttribute('companytype', ea.industry);
            branch.setAttribute('phone', ea.phone);
        }
        xmlstring = doc.toXmlString();
    }
}