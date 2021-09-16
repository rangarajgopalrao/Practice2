public class Apex_Example_3 
{
	public string industry;
    public string rating;
    public decimal amount;
    
    public void callme()
    {
        if(industry=='banking')
        {
            rating = 'hot';
            amount = 10000;
        }else{
            rating ='warm';
            amount = 50000;
        }
    }
}