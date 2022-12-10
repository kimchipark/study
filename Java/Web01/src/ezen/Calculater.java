package ezen;

public class Calculater 
{
	public int DoCal(int x,int y,String op)
	{
		int z = 0;
		switch(op)
		{
		case "+": z = x + y; break;
		case "-": z = x - y; break;
		case "*": z = x * y; break;
		case "/": z = x / y; break;
		}
		return z;
	}
	
	public int DoCal(String x,String y,String op)
	{
		try
		{
			return DoCal(Integer.parseInt(x),
					Integer.parseInt(y),op);
		}catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
	}
}
