public class Example10 
{
	public static void main(String[] args) 
	{
		int n = 0;
		int odd_sum  = 0; //Ȧ�� �հ�
		int even_sum = 0; //¦�� �հ�
		while( n <= 100)
		{
			//Ȧ��,¦�� �հ踦 ���Ͻÿ�.
			if( n % 2 == 0 ) even_sum += n;
			else             odd_sum  += n;
			n++;			
		}
		System.out.println("¦���հ�:" + even_sum);
		System.out.println("Ȧ���հ�:" + odd_sum);
		System.out.println("��ü�հ�:" + (even_sum + odd_sum));
	}	
}

