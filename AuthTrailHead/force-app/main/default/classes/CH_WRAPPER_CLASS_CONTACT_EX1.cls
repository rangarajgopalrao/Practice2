public class CH_WRAPPER_CLASS_CONTACT_EX1 
{
    public List<contact>conList{set;get;}
    public List<contact>Selectedcon{set;get;}
    public List<WrapperContact>conWrapList{set;get;}
    
    public CH_WRAPPER_CLASS_CONTACT_EX1()
    {
       conList = [select firstname,lastname,email,phone from contact limit 10];
       conWrapList = new List<WrapperContact>();
        for(contact ea:conList)
        {
            WrapperContact WC = new WrapperContact();
            wc.c = ea;
            wc.flag = false;
            conWrapList.add(wc);
        }
    }
    public void submit()
    {
        Selectedcon = new List<contact>();
        for(WrapperContact CW: conWrapList)
        {
            if(cw.flag)
            {
              Selectedcon.add(cw.c);  
            }
        }
    } 
}