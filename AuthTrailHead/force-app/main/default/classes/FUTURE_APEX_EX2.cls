public class FUTURE_APEX_EX2 
{
    public static void add()
    {
        integer A=20;
        integer B=5;
        integer C;
        c = a+b;
        system.debug('the addition result c= :' +c);
    }
    
     public static void mul()
    {
        integer A=20;
        integer B=5;
        integer C;
        c = a*b;
        system.debug('the mul result c= :' +c);
    }
     public static void sub()
    {
        integer A=20;
        integer B=5;
        integer C;
        c = a-b;
        system.debug('the sub results c= :' +c);
    }
    @future
     public static void div()
    {
        integer A=20;
        integer B=5;
        integer C;
        c = a/b;
        system.debug('the results c= :' +c);
        mul();
    }
    
}