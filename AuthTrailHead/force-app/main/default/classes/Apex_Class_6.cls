public class Apex_Class_6
{
    public string name;
    public string stagename;
    public decimal amount;
    public void callme(){
        opportunity op = new opportunity();
        op.Name = 'testing1';
        op.Amount = 50000;
        op.StageName = 'prospecting';
        insert op;
    }
}