public class Sathis_Acc_Con_combo_class2
{
    public List<AcConCOMBO> combination{set;get;}
    public AcConCOMBO com{set;get;}
    
    public Sathis_Acc_Con_combo_class2()
    {
       combination = new  List<AcConCOMBO>();
        com = new AcConCOMBO();
        com.a = new account();
        com.c = new contact();
    }
    public void addme()
    {
        combination.add(com);
        com = new AcConCOMBO();
    }
    public void clearall()
    {
        combination.clear();
    }
}