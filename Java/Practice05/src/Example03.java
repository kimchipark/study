//�ֻ��� 2���� ���� 5�� ���ö����� ��� ������ ���α׷�.
public class Example03 
{

	public static void main(String[] args)
	{
		int dice1;
		int dice2;
		int count = 0;
		while(true)
		{
			dice1 = (int)(Math.random() * 6) + 1;
			dice2 = (int)(Math.random() * 6) + 1;
			
			System.out.println("(" + dice1 + "," + dice2 + ")");
			count++;
			
			if(dice1 + dice2 == 5)
			{
				System.out.println("���� 5�� �ֻ��� ��: " + dice1 +","+ dice2 + " �ֻ��� ���� Ƚ��:" + count);
				break;
			}
		}
	}

}
