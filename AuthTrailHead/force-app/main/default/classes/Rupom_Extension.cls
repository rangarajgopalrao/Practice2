public class Rupom_Extension
{
	Public Integer L {set;get;} 
    Public Integer B {set;get;} 
    Public Integer R {set;get;} 
    
    Public Account A;
    
  Public Rupom_Extension(Apexpages.StandardController C)
  {
     A =(Account) C.getRecord(); 
  }
    
    Public Void CalcArea()
    {
      R = L*B;  
    }
    
    Public Void DeleteAcc()
    {
        Delete A;
    }
    
    Public void CreateAcc()
    {
       if(A.Sic=='blank')
       {        
            Try
            {
               Apexpages.Message M12 = New Apexpages.Message(Apexpages.Severity.INFO,'All correct');
               Apexpages.addMessage(M12);  
               Insert A;  
            }
            Catch(exception e)
            {
                  Apexpages.Message M111 = New Apexpages.Message(Apexpages.Severity.ERROR,'Account Creation Failed :' +e);
                  Apexpages.addMessage(M111);   
            }
       }     
       Else
       {
              Apexpages.Message M13 = New Apexpages.Message(Apexpages.Severity.INFO,'Sic has to be Rupom Nothing Else');
              Apexpages.addMessage(M13);    
        }  
    }
}