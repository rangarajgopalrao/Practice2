public class Pagereference_Ex2
{
    public pagereference directToaccountPage()
    {
        pagereference p = new pagereference('/001/o');
        return p;
    }
    public pagereference directTocontactPage()
    {
        pagereference p = new pagereference('/003/o');
        return p;
    }
    public pagereference invoke()
    {
        return null;
    }
    public pagereference directToaccountListPage()
    {
        pagereference p = new pagereference('/003');
        return p;
    }
    public pagereference directToopportunityPage()
    {
        pagereference p = new pagereference('/006?fcf=00B2w000004f5AV');
        return p;
    }
}