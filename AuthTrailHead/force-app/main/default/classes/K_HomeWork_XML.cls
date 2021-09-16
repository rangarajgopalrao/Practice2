public class K_HomeWork_XML
{
	 public string xmlstring {set;get;}
    public string parseData {set;get;}
    List<Dom.XmlNode> Childs {set;get;}
    
    public K_HomeWork_XML(){
        List<Dom.XmlNode> Childs=new List<Dom.XmlNode>();
        }
    public void homework(){
        Dom.Document doc=new Dom.Document();
        doc.load(xmlstring);
        Dom.XmlNode root =doc.getRootElement();
        Childs=root.getChildElements();
        for(Dom.XmlNode ec:Childs){
            if(ec.getName()=='isp'){
                parseData=parseData +'\n'+ec.getName();
                parseData=parseData +' : '+ec.getText();
     }
          if(ec.getName()=='region'){
                parseData=parseData +'\n'+ec.getName();
              parseData=parseData +' : '+ec.getText();
     }  
             if(ec.getName()=='countrycode'){
                parseData=parseData +'\n'+ec.getName();
              parseData=parseData +' : '+ec.getText();
     }  
        }
        
    }
}