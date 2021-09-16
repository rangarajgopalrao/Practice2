public class Rupom_HM_CAL_COMPLETE 
{
    public integer N{GET;SET;}
    public integer RESULT{GET;SET;}
    public integer resul{set;get;}
    public decimal results{get;set;}
    INTEGER CT{GET;SET;}
    Public String CH		{set;get;}
    Public String CHS		{set;get;}
    Public Decimal Len  	{set;get;}
    Public Decimal Br  		{set;get;}
    Public Decimal He  		{set;get;}


    public void mainmethod()
    {
        factorial();
    }
    void factorial()
    {
        resul=1;
        ct=1;
        while(ct<n)
        {
            resul=resul*ct;
            ct++;
        }
    }

Public Void MainShape()
    {
        If(CHS == 'Rect')
        {
			Rect();            
        }
        Else If(CHS == 'Tri')
        {
            Tri();  
        }
        Else
        {
           Trap(); 
        }
    }
    
    
    Void Rect()
    {
      ResultS = Len* Br;
    }
    
    Void Tri()
    {
       ResultS = 0.5 * Len * He ; 
    }
    
    Void Trap()
    {
       ResultS = ((Len + Br )/2)* He;
    }

Public Void MainMhtd()
    {
      If(CH == 'EV')
      {
          EvenSum();
      }
      Else If (CH == 'OD')
      {
          OddSum();  
      }
      Else
      {
        Result = 0;  
      }
    }
        
    void EvenSum()
    {
        Ct = 0;
		Result = 0;  
        While(Ct < N)
        {
            Result = Result + Ct;
            Ct++;
            Ct++;
        }
    }
    
    void OddSum()
    {
        Ct = 1;
		Result = 0;  
        While(Ct < N)
        {
            Result = Result + Ct;
            Ct++;
            Ct++;
        }
    }
        
}