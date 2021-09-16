public class PR_CH_LIST2_LEAD 
{
    public list<lead> ls{get;set;}
    public PR_CH_LIST2_LEAD()
    {
        ls = [Select Name, Phone, email From lead Limit 3];
    }
}