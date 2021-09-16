public class rupom_pd1 
{
integer x;
integer y;
integer a;
    integer b;
    void method1()
    {
        a=x+y;
    }
    void method2()
    {
        b=x-y;
    }
    public void method3(integer m, integer n)
    {
        x=m;
        y=n;
        method1();
        method2();
        integer r;
        r=a*b;
        system.debug(r);
    }
}