public class Rupom_VF_AC_CAL 
{
    PUBLIC INTEGER N {SET;GET;}
    PUBLIC STRING CH {SET;GET;}
    PUBLIC INTEGER RESULT{SET;GET;}
    INTEGER CT;
     Public Void MainMhtd()
    {
      If(CH == 'SUMEVEN')
      {
          SUMEVEN();
      }
      Else If (CH == 'SUMODD')
      {
          SUMODD();  
      }
      Else
      {
        Result = 0;  
      }
    }
        
    void SUMEVEN()
    {
        CT = 0;
		Result = 0;  
        While(CT < N)
        {
            Result = Result + CT;
            CT=CT+2;
        }
    }
    
    void SUMODD()
    {
        CT = 1;
		Result = 0;  
        While(CT < N)
        {
            Result = Result + CT;
            CT++;
            CT++;
        }
    }
    
    
    
    
}