public class Contact_Child_Case_Display
{
    public List<contact>ConList{set;get;}
    public Contact_Child_Case_Display(){
        
        List<contact>ConList =[select firstname,lastname,phone,email,(select subject,status from cases) from contact
                              where id in (select contactid from case)];
        system.debug(ConList);
    }
}