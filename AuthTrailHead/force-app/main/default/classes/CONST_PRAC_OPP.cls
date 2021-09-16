public class CONST_PRAC_OPP 
{
	Public Opportunity O   {set;get;}
    
    Public CONST_PRAC_OPP()
    {
        O = New Opportunity();
    }
   
    
    Public Void saveop()
    { 
        Insert O;
    }
}