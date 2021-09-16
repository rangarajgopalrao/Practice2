public class GRAND_FINAL_CAL_01 
{
    public integer Num {get;set;}
    public decimal result {get;set;}
    public string ch {get;set;}
    integer count;
    
    public string chs {get;set;}
    public decimal r {get;set;}
    public integer l{get;set;}
    public integer b{get;set;}
    public integer h{get;set;}
    
    public integer RF{get;set;}
    public integer CT{get;set;}
    public integer fact{set;get;}
    
    
    public void SEO()
    {
        if(ch=='EV')
        {
            EVENSUM();
        }
        else if(ch=='OD')
        {
            oddsum();
        }
        else
        {
            result=0;
        }
    }
    void EVENSUM()
    {
        result=0;
        count=0;
        while(count<Num)
        {
            result=result+count;
        	count++;
        	count++;
        }
    }
     void ODDSUM()
    {
        result=0;
        count=1;
        while(count<Num)
        {
            result=result+count;
        	count++;
        	count++;
        }
    }
 //-----------------------------------------------------------------------------------------------------------------------------------------   
    PUBLIC VOID AREARTT()
{
	if(chs=='rect')
	{
		rect();
	}
	ELSE IF(chs=='tri')
	{
		tri();
	}
	ELSE
	{
		trap();
	}
}
	VOID RECT()
	{
	R = L*B;
	}
	VOID TRI()
	{
	R = 0.5*L*H;
	}
	VOID TRAP()
	{
	R = 0.5*H*(L+B);
	}
//------------------------------------------------------------------------------------------------------------------------------------------    
    public void mainfact()
    {
        RF=1;
        count=1;
        while(Count<=Num)
        {
            RF=RF*Count;
            Count++;
        }
    }

}