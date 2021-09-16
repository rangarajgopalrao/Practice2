public class future_apex_ex1
{
    @future
    public static void method1()
    {
        system.debug('method1-1');
        system.debug('method1-2');
        system.debug('method1-3');
    }
    @future
    public static void method2()
    {
        system.debug('method2-1');
        system.debug('method2-2');
        system.debug('method2-3');
    }
    public static void method3()
    {
        system.debug('method3-1');
        method1();
        system.debug('method3-2');
        method2();
        system.debug('method3-3');
    }
}