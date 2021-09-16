public class Mapvalue
{
	@AuraEnabled
    public static Map<string,string> getmymap()
    {
        Map<string,string> putkeyvalue = new Map<string,string>();
        putkeyvalue.put('key1', 'value1');
        putkeyvalue.put('key2', 'value2');
        putkeyvalue.put('key3', 'value3');
        return putkeyvalue;
    }
}