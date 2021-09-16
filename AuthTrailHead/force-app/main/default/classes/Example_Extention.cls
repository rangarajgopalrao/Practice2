public class Example_Extention {
    public String name {set;get;}
    public Integer age {set;get;}
    
    public Example_Extention(Apexpages.StandardController c)
    {
        
    }
public void Submit(){
    if( name==null || name=='')
    {
        
            Apexpages.Message M1=new Apexpages.Message(Apexpages.severity.error,'The name field should enter');
        Apexpages.addMessage(M1);
    }
      
        
   else if(age==0 || age==null){
        
       Apexpages.Message M2=new Apexpages.Message(Apexpages.severity.error,'The age field should enter'); 
        Apexpages.addMessage(M2);
    }
    
  else
        {
             Apexpages.Message M3=new Apexpages.Message(Apexpages.Severity.INFO, 'All Correct');
            Apexpages.addMessage(M3);
        } 

}   
            
        
    }