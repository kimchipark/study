package ezen;

public class Calculater 
{
	public int DoCal(int x,int y,String op)
	{
		int z = 0;
		try
		{
			switch(op)
			{
			case "+": z = x + y; break;
			case "-": z = x - y; break;
			case "*": z = x * y; break;
			case "/": z = x / y; break;
			}
			return z;
		}catch(Exception e)
		{
			return 0;
		}
	}
	
	public int DoCal(String x,String y,String op) 
	{
		try
		{
//			x = x.replace(",", "");
//			y = y.replace(",", "");
			return DoCal(Integer.parseInt(x),Integer.parseInt(y),op);
		}catch(Exception e)
		{
			return 0;
		}
	}
	
//	public static void main(String[] args) 
//	{
//		Calculater c = new Calculater();
//		int z = c.DoCal("10,000","11,000","+");
//		System.out.println(z);
//	}
}

