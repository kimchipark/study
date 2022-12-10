public class Example14 
{
	public static void main(String[] args) 
	{
		for(int x = 1; x <= 10; x++)
		{			
			for(int y = x ; y <= 10; y++)
			{
				System.out.print(" ");
			}
			for(int z = 1; z <= x; z++)
			{
				System.out.print("*");
			}
			System.out.println("");
		}
	}
}
