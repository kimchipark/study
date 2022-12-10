
public class Calculator
{
	public void getCal(int x, int y)
	{
		int sum = 0;
		
		for(int i = x ; i <= y ; i++)
		{
			System.out.print(i + " ");
			sum += i;
		}
		System.out.println();
		System.out.println(x +" "+ y +" return");
		System.out.println(sum);
		
	}
}
