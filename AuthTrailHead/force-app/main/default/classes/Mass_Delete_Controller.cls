public class Mass_Delete_Controller
{
    public List<account> acc{set;get;}
    public Mass_Delete_Controller(apexpages.StandardSetController controller)
    {
        string [] fields = new string []{'name','industry','phone','rating'};
            controller.addFields(fields);
        acc =(List<account>) controller.getSelected();  //selected fields return only
    }
    public pagereference massdelete()
    {
        database.delete(acc, false);
        pagereference p = new pagereference('/001/o');
        return p;
    }
}