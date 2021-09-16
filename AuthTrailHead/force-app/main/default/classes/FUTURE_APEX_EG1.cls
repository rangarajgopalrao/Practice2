public class FUTURE_APEX_EG1
{
	@future
    public static void callMe(){
        system.debug('callme1');
        system.debug('callme2');
        system.debug('callme3');
    }
     @future
     public static void showMe(){
        system.debug('showMe1');
        system.debug('showMe2');
        system.debug('showMe3');
    }
    
     public void invokeMe(){
        system.debug('invokeMe1');
        system.debug('invokeMe2');
          callMe();
        system.debug('invokeMe3');
         showMe();
    }
}