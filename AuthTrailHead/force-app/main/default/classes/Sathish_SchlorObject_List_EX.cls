public class Sathish_SchlorObject_List_EX
{
    public Scholar__c S {set;get;}        //-----collection data type null() value //
    public List<Scholar__c> SL {set;get;}  //---------single data type have null() value
    
    public Sathish_SchlorObject_List_EX()
    {
        S = new Scholar__c();            //---------Intializaton or memory cerated for collection or List but have blank value () //
        sl = new List<Scholar__c>();     //---------Intializaton or memory cerated for single but have blank value () //
    }
    public void addscholar()
    {
        sl.add(s);                   // ---add values from a to acc list method used here//
        S = new Scholar__c();        //--- create new empty memory for change of record values //
    }
    public void clearrecord()
    {
        sl.clear();                   //---- clear the memory list method used here
    }
}