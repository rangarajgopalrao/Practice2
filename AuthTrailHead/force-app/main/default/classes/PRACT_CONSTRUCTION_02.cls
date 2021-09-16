public class PRACT_CONSTRUCTION_02 
{
    
    public void creatcop(string na,decimal x,string y,string z)
    {
        opportunity c = new opportunity(name=na,probability=x,type=y,leadsource=z);
        insert c;
    }
}