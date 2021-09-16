public class PRACTICE_PR_SOSL_01 
{
    public string searchsum {set;get;}
    public list<account> output {set;get;}
    public void cansearch()
    {
        output = (list<account>)[find: searchsum returning account,contact(phone,fax,name)][0];
    }
}