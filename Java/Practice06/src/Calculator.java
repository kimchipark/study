
public class Calculator 
{
	public int getCalculator(int x, int y, String sign)
	{
		if(sign.equals("+"))
			return x + y;
		else if(sign.equals("-"))
			return x - y;
		else if(sign.equals("*"))
			return x * y;
		else if(sign.equals("/"))
			if(y!=0)
				return x / y;
		
		return 0;
	}
}
