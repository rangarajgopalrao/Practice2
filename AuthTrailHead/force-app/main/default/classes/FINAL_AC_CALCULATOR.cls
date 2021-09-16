public class FINAL_AC_CALCULATOR 
{
PUBLIC DECIMAL R{GET;SET;}
PUBLIC String CHS{GET;SET;}
PUBLIC DECIMAL L{GET;SET;}
PUBLIC DECIMAL B{GET;SET;}
PUBLIC DECIMAL H{GET;SET;}
    public string REC{GET;SET;}
    PUBLIC STRING TRI{GET;SET;}
    PUBLIC STRING TRP{GET;SET;}
    public string EV{GET;SET;}
    PUBLIC STRING OD{GET;SET;}
    PUBLIC STRING NN{GET;SET;}
    
public integer N{GET;SET;}
INTEGER C;
PUBLIC String CH{GET;SET;}
PUBLIC DECIMAL RESULT{GET;SET;}

PUBLIC INTEGER RF{GET;SET;}
PUBLIC INTEGER CF{GET;SET;}


PUBLIC VOID METHOD1()
{
	if(chs=='REC')
	{
		REC();
	}
	ELSE IF(chs=='TRI')
	{
		TRI();
	}
	ELSE
	{
		TRP();
	}
}
	VOID REC()
	{
	R = L*B;
	}
	VOID TRI()
	{
	R = 0.5*L*H;
	}
	VOID TRP()
	{
	R = 0.5*H*(L+B);
	}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
PUBLIC VOID METHOD2()
{
	IF(CH=='EV')
	{
		EVENSUM();
	}
	ELSE IF(CH=='OD')
	{
		ODDSUM();
	}
	ELSE
	{
		RESULT=0;
	}
}
	void evensum()
	{
	C=0;
	RESULT=0;
	WHILE(C<N)
	{
	RESULT=RESULT+C;
	C++;
	C++;
	}
	}
	void oddsum()
	{
	C=1;
	RESULT=0;
	WHILE(C<N)
	{
	RESULT=RESULT+C;
	C++;
	C++;
	}
	}
//----------------------------------------------------------------------------------------------------------------------------------------------------
PUBLIC VOID METHOD3()
	{
	RF=1;
	CF=1;
	WHILE(CF<=N)
	{
	RF=RF*CF;
	CF++;
	}
	}
}