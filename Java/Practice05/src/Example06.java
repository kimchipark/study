
public class Example06 
{

	public static void main(String[] args) 
	{
		int num[] = {3, 4, 5, 6, 7};
		int even = 0;
		int odd = 0;
		
		for(int i = 0; i < num.length ; i++)
		{
			if(num[i] % 2 == 0)
			{
				even++;
			}
			else
			{
				odd++;
			}
		}
		
		System.out.println("¦���� ����:"+even);
		System.out.println("Ȧ���� ����:"+odd);
		
	}

}
