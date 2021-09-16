public class CL_19DAY_RUPOM 
{
    public string name {get;set;}
    public string name()
    {
        return 'RAVI';
    }
    PUBLIC STRING GETNAME()
    {
        RETURN 'Ramesh';
    }
    public void RRRR()
    {
        name='Capital Info';
    }
    public integer getage()
    {
        return 28;
    }
    public string getcity()
    {
        return 'Hyderabd';
    }
    public Decimal getsalary()
    {
        return 1235.20;
    }
    public boolean getgenuinecandidate()
    {
        return true;
    }
    public list<account> getAcc()
    {
        return[select id,name,phone,fax,industry,rating from account];
    }
    public account getAC1()
    {
        RETURN[SELECT ID,NAME,PHONE,INDUSTRY,FAX,RATING FROM ACCOUNT WHERE ID ='0012w000007zd2c'];
    }
    public passenger__c getPUS()
    {
        return[select name,First_name__c,Last_name__c,Mobile_number__c,phone__c,Class__c from passenger__c where id='a002w000004t7LyAAI'];
    }
    
}