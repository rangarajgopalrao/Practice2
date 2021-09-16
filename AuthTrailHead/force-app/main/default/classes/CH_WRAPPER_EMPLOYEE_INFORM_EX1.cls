public class CH_WRAPPER_EMPLOYEE_INFORM_EX1 
{
    public list<EmployeeWrapper>empdtl{set;get;}
    public CH_WRAPPER_EMPLOYEE_INFORM_EX1()
    {
       EmployeeWrapper ew1 = new EmployeeWrapper();
        ew1.name = 'Gopal';
        ew1.experience = 2;
        ew1.phone = '1234';
        ew1.salary = 26000.00;
        ew1.flag = true;
        
        EmployeeWrapper ew2 = new EmployeeWrapper();
        ew2.name = 'Gopi';
        ew2.experience = 9;
        ew2.phone = '5234';
        ew2.salary = 36000.00;
        ew2.flag = false;
        
        EmployeeWrapper ew3 = new EmployeeWrapper();
        ew3.name = 'Satwik';
        ew3.experience = 1;
        ew3.phone = '6534';
        ew3.salary = 16000.00;
        ew3.flag = true;
        
        empdtl = new list<EmployeeWrapper>{ew1,ew2,ew3};
    }
}