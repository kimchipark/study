public class Example09 
{
	public static void main(String[] args) 
	{
		//어떤 값 n에 대하여 2의 배수이고 4의 배수이면
		//"2와 4의 배수"라고 출력한다.
		int n = 8;
		if( n % 2 == 0)
		{
			if( n % 4 == 0)
			{
				System.out.println("2와 4의 배수!");
			}
		}
		
		if( n % 2 == 0 && n % 4 == 0)
		{
			System.out.println("2와 4의 배수!");
		}
	}
}
