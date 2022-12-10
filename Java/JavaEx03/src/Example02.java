public class Example02 
{
	public static void main(String[] args) 
	{
		int score1 = 99;
		int score2 = 100;
		int score3 = 88;
		int sum,avg;
		
		sum = score1 + score2 + score3;
		avg = sum / 3;
		
		int[] score = { 99, 100, 88 };
		sum = score[0] + score[1] + score[2];
		
		avg = sum / 3;
		System.out.println("합계:" + sum);
		System.out.println("평균:" + avg);
		
		//ref를 score에 참조하도록 선언한다.
		int[] ref = score;
		ref[0] = 77;
		System.out.println(score[0]);
		
		//원소의 갯수를 출력한다.
		int count = score.length;
		System.out.println("원소의 갯수:" + count);
		
		//배열 원소들의 합계를 계산한다.
		int i = 0;
		sum = 0;
		for(i = 0 ; i < count; i++)
		{
			sum += score[i];
		}
		System.out.println("합계:" + sum);
		
		
	}
}
