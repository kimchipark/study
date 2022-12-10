public class Example10 
{
	public static void main(String[] args) 
	{
		int n = 0;
		int odd_sum  = 0; //È¦¼ö ÇÕ°è
		int even_sum = 0; //Â¦¼ö ÇÕ°è
		while( n <= 100)
		{
			//È¦¼ö,Â¦¼ö ÇÕ°è¸¦ ±¸ÇÏ½Ã¿À.
			if( n % 2 == 0 ) even_sum += n;
			else             odd_sum  += n;
			n++;			
		}
		System.out.println("Â¦¼öÇÕ°è:" + even_sum);
		System.out.println("È¦¼öÇÕ°è:" + odd_sum);
		System.out.println("ÀüÃ¼ÇÕ°è:" + (even_sum + odd_sum));
	}	
}

