public class Example07 
{
	public static void main(String[] args) 
	{
		String str = "123,000";		
		str = str.replace(",","");
		int n = Integer.parseInt(str);
		System.out.println(n);
		
		String[] score = { "11,000", "22,000", "99,000", "100,000", "88,000" };
		int sum = 0;
		for(int i = 0 ; i < score.length; i++)
		{
			//�޸��� ���ش�.
			score[i] = score[i].replace(",","");
			sum = sum + Integer.parseInt(score[i]);
		}
		System.out.println("�հ�:" + sum);	
		
		//���� for���� �̿��Ѵ�.
		sum = 0;
		for(String point : score)
		{
			//�޸��� ���ش�.			
			point = point.replace(",","");
			sum = sum + Integer.parseInt(point);
		}
		System.out.println("�հ�:" + sum);
		
	}

}
