public class CAL_AMEER 
{
public integer Num {set;get;}
    public integer Result {set;get;}
    public Decimal Results {set;get;}
    public integer ResultF {set;get;}
     public String Ch {set;get;}
     public String Chs {set;get;}
    integer Count;
    public integer Le {set;get;}
    public integer Br {set;get;}
    public integer He {set;get;}
    public integer Fact {set;get;}
    
    
     public void MainFact()
     {
         count=1;
         ResultF=1;
         while(Count<=Fact)
         {
             ResultF=ResultF*Count;
             Count++;
         }
         
     }
    
    
    public void MainShape()
    { 
        if(Chs == 'Rect')
        {
             Rect();
        }
        else if (Chs == 'Tri')
        {
           Tri(); 
        }
        else
       {
          Trap(); 
       }
    }
    void Rect()
    {
     Results=Le*Br;   
    }
    void Tri()
    {
        Results= 0.5 * Le * He ;
    }
    void Trap()
    {
        ResultS = ((Le + Br)/2) * He;
    }
    Public void MainMhtd()
    {
        if (Ch == 'ev')
        {
            sumeven();
        }
        else if (Ch == 'od')
        {
           sumodd(); 
        }
        else
        {
            Result = 0 ;
        }
    }
    void sumeven()
    {
        Count=0;
        Result=0;
        While(Count<Num)
        {
         Result=Result+Count;
            Count++;
            Count++;
        }
    }
     void sumodd()
    {
        Count=1;
        Result=0;
        While(Count<Num)
        {
         Result=Result+Count;
             Count++;
             Count++;           
        }
    }
}