public class PRCT_CONSTRUCTION_03 
{
    public void creatacc(string w,string x,string y,string z)
    {
      account A = new account();
        A.name=w;
        A.phone=x;
        A.industry=y;
        A.rating=z;
        insert A;
    }
}