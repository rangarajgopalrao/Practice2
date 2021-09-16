public class PRACTICE_PR_SOSL_02 
{
	public string searchtext {set;get;}
    public list<account> output {set;get;}
    
    public void dosearch()
    {
      output = (list<account>)[find :searchtext returning account,contact,lead(name,phone)][0]; 
    }
}