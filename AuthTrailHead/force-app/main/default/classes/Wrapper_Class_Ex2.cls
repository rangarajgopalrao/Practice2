public class Wrapper_Class_Ex2
{
    public List<WRAPPEREMPLOYEE> empWrap{set;get;}
    
    public Wrapper_Class_Ex2()
    {
        empWrap = new List<WRAPPEREMPLOYEE>();        // Main memory alocation
       
        WRAPPEREMPLOYEE ew1 = new WRAPPEREMPLOYEE();   // Sub memory alocation
        ew1.name = 'raghu';
        ew1.exp = 2;
        ew1.salary = 20000;
        empWrap.add(ew1);
        
        WRAPPEREMPLOYEE ew2 = new WRAPPEREMPLOYEE();
        ew2.name = 'naveen';
        ew2.exp = 1;
        ew2.salary = 20000;
        empWrap.add(ew2);
        
        WRAPPEREMPLOYEE ew3 = new WRAPPEREMPLOYEE();
        ew3.name = 'chandu';
        ew3.exp = 4;
        ew3.salary = 80000;
        empWrap.add(ew3);
        
        WRAPPEREMPLOYEE ew4 = new WRAPPEREMPLOYEE();
        ew4.name = 'mohan';
        ew4.exp = 3;
        ew4.salary = 30000;
        empWrap.add(ew4);
        empWrap = new List<WRAPPEREMPLOYEE>{ew1,ew2,ew3,ew4};
    }
}