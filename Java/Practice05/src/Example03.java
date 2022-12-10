//주사위 2개의 합이 5가 나올때까지 계속 굴리는 프로그램.
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
				System.out.println("합이 5인 주사위 수: " + dice1 +","+ dice2 + " 주사위 굴린 횟수:" + count);
				break;
			}
		}
	}

}
