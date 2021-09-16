public class Rupom_POLY_OVERLOAD_EG1 
{
	Public Void Calculate(Integer X, Integer Y)
   {
     Integer R;
     R = X*Y;
     System.debug('The Area of the given figure is ' +R);  
   }
    
   Public Void Calculate(String X , Integer Y)
   {   
     If(X=='pulleys'|| X=='gearboxes' || X=='powerbanks')
        {
            Y = 15;
         System.debug('GST SLAB1 IN % :'+Y);
     }
      Else If (X=='BOILERS'|| X=='BOTTLES' || X=='BAMBOO  FLOORING')
      {
        Y = 12;
        System.debug('GST SLAB2 IN % :'+Y);
      }
       ELSE
       {
           Y = 5;
          System.debug('GST SLAB3 IN % :'+Y); 
       }  
   }
    
   Public Void Calculate(Integer Y,String X )
   {
       System.debug('Plaese enter Correct Calculation and values you need to calculate'); 
   }
}