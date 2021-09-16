public class XML_Des_Int 
{
    public string xmlstring{set;get;}
    public string parsedata{set;get;}
    
    public void convertMe(){
        dom.Document doc = new dom.Document();    // create document
        doc.load(xmlstring); 						// load docments
        dom.XmlNode root = doc.getrootelement();	// get root element
        List<dom.XmlNode> childs = root.getchildelements();  // get root/subroots child elemtns
        for(dom.XmlNode ec: childs){
            parsedata = parsedata +'\n'+ec.getName();           // for each root element get label
            parsedata = parsedata +' : '+ec.getText();          // for each root element get data
        }
    }
}