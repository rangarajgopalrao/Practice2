public class Pagereference_Ex3
{
    public string selected{set;get;}
    public pagereference SearchButton()
    {
        pagereference p;
        if(selected =='None')
        {
            return null;
        }
        else
        {
            if(selected=='Account')
            {
                p = new pagereference('/001/o');
            }else{
                p = new pagereference('/003');
            }
            return p;
        }
    }
}