public class Calculater 
{
	private int Add(int x,int y)
	{
		return x + y;
	}
	
	private double Add(double x,double y)
	{
		return x + y;
	}	
	
	private int Minus(int x,int y)
	{
		return x - y;
	}	
	
	private double Minus(double x,double y)
	{
		return x - y;
	}	
	
	private int Mux(int x,int y)
	{
		return x *+ y;
	}	
	
	private double Mux(double x,double y)
	{
		return x *+ y;
	}	
	
	private int Div(int x,int y)
	{
		if( y != 0 )
		{
			return x / y;
		}else
		{
			return 0;
		}
	}	
	
	private double Div(double x,double y)
	{
		if( y != 0 )
		{
			return x / y;
		}else
		{
			return 0;
		}
	}	
	
	public int DoCal(int x,int y,String op)
	{
		int z = 0;
		if(op.equals("+"))
		{
			z = Add(x,y);
		}else if(op.equals("-"))
		{
			z = Minus(x,y);
		}else if(op.equals("*"))
		{
			z = Mux(x,y);
		}else
		{
			z = Div(x,y);
		}
		return z;
	}
	
	public double DoCal(double x,double y,String op)
	{
		double z = 0;
		if(op.equals("+"))
		{
			z = Add(x,y);
		}else if(op.equals("-"))
		{
			z = Minus(x,y);
		}else if(op.equals("*"))
		{
			z = Mux(x,y);
		}else
		{
			z = Div(x,y);
		}
		return z;
	}	
	
	public static void main(String[] args) 
	{
		int x = 10;
		int y = 20;
		String op = "*";
		
		Calculater c = new Calculater();
		int z = c.DoCal(x, y, op);
		System.out.println(z);
	}
}



