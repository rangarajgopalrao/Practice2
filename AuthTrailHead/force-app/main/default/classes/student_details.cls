public class student_details 
{
	public string studentname;
    public string city;
    public integer age;
    public decimal salary;
    public void display()
    {
        System.debug('Student Details : Age=' +age+':name ='+studentName+': salary = '+salary+':city ='+city);
    }
}