public class Tab_Example
{
    public string selected{set;get;}
    public void next()
    {
        selected ='comp';
    }
    public pagereference finish()
    {
        pagereference p = new pagereference('/001/o');
        return p;
    }
    public void previous()
    {
        selected ='basic';
    }
}