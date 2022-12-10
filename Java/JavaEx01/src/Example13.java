public class Example13 
{
	public static void main(String args[])
	{
		//for( 초기값 ; 종료조건 ;  증감조건)
		for(int x = 1 ;  x <= 9 ; x++)
		{
			//System.out.println("x=" + x);
			for(int y = 1; y <= 9; y++)
			{
				System.out.println(x + " x " + y + " = " + (x*y));
			}
		}		
		
	}
}
