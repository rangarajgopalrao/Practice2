public class SOSL_EX2 
{
    public list<account> ac {set;get;}
    public list<opportunity> op {set;get;}
    public SOSL_EX2()
    {
        list<list<sobject>>result = [find 'updated' in all fields returning account(name,industry,rating),opportunity(name,stagename,account.id)];
        ac =(list<account>)result[0];
        op = (list<opportunity>)result[1];
    }
}