public class Example03 
{
	public static void main(String[] args) 
	{
		int[] score = { 60, 80, 99, 44, 76, 69 };
		int sum =0;
		int avg = 0;
		for(int i = 0 ; i < score.length; i++)
		{
			sum += score[i];			
		}	
		avg = sum / score.length;
		System.out.println(sum);
		System.out.println(avg);		
	}
}
