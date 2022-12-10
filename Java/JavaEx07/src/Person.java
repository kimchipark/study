public class Person 
{
	public static void main(String[] args) 
	{
		Calculater c = new Calculater();
		for(int i=1; i <= 9; i++)
		{
			c.PrintGugudan(i);	
		}
		
		int z = c.Add(11,22,33);
		System.out.println(z);
	}
}
