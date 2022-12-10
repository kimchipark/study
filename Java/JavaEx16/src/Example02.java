public class Example02 
{
	public static void main(String[] args) 
	{
		int x,y,z=100;		

		try
		{
			x = 10;
			y = 0;		
			z = x / y;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("z=" + z);
		System.out.println("OK");
	}
}
