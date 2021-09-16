public class ProductClassWrapper
{
    public list<CH_PRODUCT_Wrapper>ProdWrap {set;get;}
    public list<String>ProdWrap2{set;get;}
 
    public ProductClassWrapper()
    {
        ProdWrap = new list<CH_PRODUCT_Wrapper>();
        CH_PRODUCT_Wrapper pw1 = new CH_PRODUCT_Wrapper();
        pw1.prodName = 'Santoor';
        pw1.prodCode = 789;
        pw1.prodprice = 25;
        ProdWrap.add(pw1);
        
        CH_PRODUCT_Wrapper pw2 = new CH_PRODUCT_Wrapper();
        pw2.prodName = 'Dove';
        pw2.prodCode = 456;
        pw2.prodprice = 50;
        ProdWrap.add(pw2);
        
        CH_PRODUCT_Wrapper pw3 = new CH_PRODUCT_Wrapper();
        pw3.prodName = 'Rexona';
        pw3.prodCode = 123;
        pw3.prodprice = 30;
        ProdWrap.add(pw3);
        
        ProdWrap = new list<CH_PRODUCT_Wrapper>{pw1,pw2,pw3};
    }
    public void submit()
    {
        ProdWrap2 = new list<string>();
        for(CH_PRODUCT_Wrapper p:ProdWrap)
        {
           ProdWrap2.add(p.prodName); 
        }
    }
}