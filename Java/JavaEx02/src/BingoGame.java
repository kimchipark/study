import java.util.Scanner;

public class BingoGame 
{
	public static void main(String[] args) 
	{
		int count = 0;		
		int Answer = (int)(Math.random() * 1000) % 100 + 1;
		System.out.println("����:" + Answer);
		
		Scanner KeyIn = new Scanner(System.in);
		while(true)
		{
			int UserKey;
			System.out.print("�Է�[ " + (5 - count) + "�� ���� ]:");
			UserKey = KeyIn.nextInt();
			//����� �Է�(90) > ����(70) --> "DOWN"
			//����� �Է�(20) < ����(70) --> "UP"
			//����� �Է�(70) == ����(70) --> "BINGO"
			if( UserKey > Answer )
			{
				System.out.println("DOWN");
				count++;
			}else if( UserKey < Answer )
			{
				System.out.println("UP");
				count++;
			}else
			{
				System.out.println("BINGO!!!");
				break;
			}
			if( count >= 5)
			{
				System.out.println("Game Over!");
				break;
			}
		}
	}
}
