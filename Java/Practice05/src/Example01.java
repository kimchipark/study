//1~100까지 3의 배수를 출력하는 프로그램
public class Example01 
{

	public static void main(String[] args) 
	{
		int sum = 0;
		
		for(int i = 1; i <= 100 ; i++)
		{
			if(i % 3 == 0)
			{
				sum+=i;
			}
		}
		
		System.out.println(sum);
	}

}
