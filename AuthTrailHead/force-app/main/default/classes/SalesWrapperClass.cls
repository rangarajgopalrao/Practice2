public class SalesWrapperClass
{
    public list<CH_WRAPPERSALES> salesWrap{set;get;}
    
    public SalesWrapperClass()
    {
        salesWrap = new list<CH_WRAPPERSALES>();
        list<account> ac = [select name,phone,industry from account limit 10];
        list<opportunity> opp = [select name,stagename,amount from opportunity limit 10];
        list<contact> c = [select lastname,firstname,email from contact limit 10];
        for(account ea:ac)
        {
           CH_WRAPPERSALES sw1 = new CH_WRAPPERSALES();
            sw1.acc = ea;
            salesWrap.add(sw1);
        }
        for(contact ec: c)
        {
           CH_WRAPPERSALES sw2 = new CH_WRAPPERSALES();
            sw2.con = ec;
            salesWrap.add(sw2);
        }
        for(opportunity eop: opp)
        {
            CH_WRAPPERSALES sw3 = new CH_WRAPPERSALES();
            sw3.op = eop;
            salesWrap.add(sw3);
        }

    }
}