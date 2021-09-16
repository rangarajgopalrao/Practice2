public class AccountOptionList
{
    public List<account> acc{set;get;}
    public List<selectoption> option {set;get;}
    public string selected{set;get;}
    
    public AccountOptionList()
    {
        option = new List<selectoption>();
        List<string> rat = new list<string>{'Hot','Cold','Warm'};
        for(string es: rat)
        {
           selectoption so = new selectoption(es,es);
            option.add(so);
        }
    }
    public void RatingBasedAcc()
    {
     	acc = [select name,industry,type,phone from account where rating = :selected];   
    }
}