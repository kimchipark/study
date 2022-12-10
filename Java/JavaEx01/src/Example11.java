public class Example11 
{
	public static void main(String[] args) 
	{
		int x = 1;
		
		while(x <= 9)
		{
			//System.out.println("==>x=" + x);			
			int y = 1;
			while( y <= 9 )
			{
				int z = x * y;
				System.out.println(x + " x " + y + " = " + z);
				y++;
			}			
			x+=2;
			System.out.println("====================");
		}
	}
}
