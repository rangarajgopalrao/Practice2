Public class DisplayVFNamesDropDown {
    public String selectedVF {get;set;}
    public DisplayVFNamesDropDown() 
    {
    }
    public List<SelectOption> getVisualforcePages()
    {
        List<SelectOption> lstVFPage = new List<SelectOption>();
        lstVFPage.add(new SelectOption('' , 'Select'));
        for(ApexPage objPage:[Select id,name from ApexPage])
        {
            lstVFPage.add(new SelectOption(objPage.Name , objPage.Name));
        }
        return lstVFPage;

    }
    public void getSelectedValue() 
    {
       
    }
}