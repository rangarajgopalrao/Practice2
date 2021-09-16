public class Account_Recursive_Example 
{
    public static boolean flag=true;
    public static void callMe()
    {
        if(flag == true)
        {
            flag = false;
            account a = new account();
        	a.name ='gopal';
        	a.Phone = '04-88999';
        	a.Industry = 'software';
       	 	a.rating = 'Hot';
        	insert a;
        }
    }
}