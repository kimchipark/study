public class Example07 
{
	public static void main(String[] args) 
	{
		/*
		//�Ҽ����� ������ ���ڰ��� �����Ѵ�. 
		double rnd = Math.random() * 100;
		System.out.println(rnd);
		
		//���������� ��ȯ�Ѵ�.
		int dice = (int)rnd;
		System.out.println(dice);
		
		//6���� ���� �������� ���ϰ�, 1�� ���Ѵ�. ( 1 ~ 6 ���� �����)
		dice = (dice % 6) + 1;
		System.out.println(dice);
		*/
		//1~6���� ������ ���ڸ� ����� ����.
		int dice = (((int)(Math.random() * 100)) % 6) + 1;		
		System.out.println(dice);
		if( dice == 1)
		{
			System.out.println("1��");
		}else if( dice == 2)
		{
			System.out.println("2��");
		}else if( dice == 3)
		{
			System.out.println("3��");
		}else if( dice == 4)
		{
			System.out.println("4��");
		}else if( dice == 5)
		{
			System.out.println("5��");
		}else
		{
			System.out.println("6��");
		}
		
	}
}
