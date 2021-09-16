public class DataTableLightningApex
{
    @AuraEnabled
    public static List<contact> fetchContact(){
        List<contact>contacts =[select id,name,Title,Department from contact limit 10];
        return contacts;
    }
}