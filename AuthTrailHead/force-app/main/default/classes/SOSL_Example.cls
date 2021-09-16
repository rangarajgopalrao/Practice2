public class SOSL_Example
{
    public list<account>acc{set;get;}
    public list<contact>con{set;get;}
    public SOSL_Example()
    {
        list<list<sobject>> result=[find 'test' in all fields returning account(name,phone,rating limit 2),contact(firstname,lastname,phone)];
        acc = (list<account>)result[0];
        con = (list<contact>)result[1];
    }
}