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
		System.out.println("�հ�:" + sum);
		System.out.println("���:" + avg);
		
		//ref�� score�� �����ϵ��� �����Ѵ�.
		int[] ref = score;
		ref[0] = 77;
		System.out.println(score[0]);
		
		//������ ������ ����Ѵ�.
		int count = score.length;
		System.out.println("������ ����:" + count);
		
		//�迭 ���ҵ��� �հ踦 ����Ѵ�.
		int i = 0;
		sum = 0;
		for(i = 0 ; i < count; i++)
		{
			sum += score[i];
		}
		System.out.println("�հ�:" + sum);
		
		
	}
}
