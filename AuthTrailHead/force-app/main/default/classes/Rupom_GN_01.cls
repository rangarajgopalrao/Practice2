public class Rupom_GN_01 
{
    public integer N1 {set;get;}
    public integer N2 {set;get;}
    public integer N3 {set;get;}
    PUBLIC INTEGER R {SET;GET;}
    
    public void Greater_Number()
    {
        if(N1>N2 && N1>N3)
        {
           R=N1; 
        }
        ELSE IF(N2>N1 && N2>N3)
        {
            R=N2;
        }
        ELSE
        {
            R=N3;
        }
            
    }
}