public class SATHISH_AccountInfo
{
    public list<account>acc{set;get;}  //-----collection data type null() value //
    public account a{set;get;}  //---------single data type have null() value
    
    public SATHISH_AccountInfo()
    {
      acc = new list<account>();  //---------Intializaton or memory cerated for collection or List but have blank value () //
       a = new account();         //---------Intializaton or memory cerated for single but have blank value () //
        
    }
    public void addvalue()
    {
        acc.add(a);            // ---add values from a to acc list method used here//
        a = new account();    //--- create new empty memory for change of record values //
        
    }
    public void vanishrecord()
    {
        acc.clear();          //---- clear the memory list method used here
    }
}