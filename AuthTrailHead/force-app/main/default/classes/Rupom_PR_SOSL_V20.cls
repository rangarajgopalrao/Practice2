public class Rupom_PR_SOSL_V20 
{
    public string searchtext{set;get;}
    public List<Lead> results {set;get;}
    
    public void dosearch()
    {
        results = (List<Lead>)[find :searchtext returning lead(name,phone,email)][0];
    }
}