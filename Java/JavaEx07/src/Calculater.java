public class Calculater 
{
	public void MakeSum(int max)
	{		
		int i;
		int sum = 0;
		for(i=1; i<= max; i++)
		{
			sum += i;
		}
		System.out.println(sum);		
	}
	
	public void PrintStar(int max)
	{
		for(int i=0; i < max; i++)
		{
			System.out.print("*");
		}
		System.out.println("");
	}
	
	void PrintGugudan(int y)
	{
		for(int x=1; x <= 9; x++)
		{
			System.out.println(y + " x " + x + " = " + (x*y));
		}
		System.out.println("================");
	}
	
	int Add(int x,int y)
	{
		return x + y;
	}
	
	int Add(int x,int y,int z)
	{
		return x + y + z;
	}	
	
	double Add(double x,double y)
	{
		return x + y;
	}
}
