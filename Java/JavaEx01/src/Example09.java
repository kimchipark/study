public class Example09 
{
	public static void main(String[] args) 
	{
		//� �� n�� ���Ͽ� 2�� ����̰� 4�� ����̸�
		//"2�� 4�� ���"��� ����Ѵ�.
		int n = 8;
		if( n % 2 == 0)
		{
			if( n % 4 == 0)
			{
				System.out.println("2�� 4�� ���!");
			}
		}
		
		if( n % 2 == 0 && n % 4 == 0)
		{
			System.out.println("2�� 4�� ���!");
		}
	}
}
