public class LT_9_EG4_DISPLAY_List_CONTACT
{
    @AuraEnabled
    public static List<Contact> DisplayListContacts(string searchtext)
    {
        string query = 'select id,firstname,lastaname,phone from contact where firstname like \'%'+searchtext+'%\'';
        List<Contact> contacts = Database.query(query);
        return contacts;
    }
}