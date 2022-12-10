import java.util.Scanner;

public class BingoGameEx 
{
	public static void main(String[] args) 
	{
		boolean IsHit = false;
		int Answer = (int)(Math.random() * 1000) % 100 + 1;
		System.out.println("����:" + Answer);
		
		Scanner KeyIn = new Scanner(System.in);
		for(int i = 0 ; i < 5; i++)
		{
			int UserKey;
			System.out.print("�Է�[ " + (5 - i) + "�� ���� ]:");
			UserKey = KeyIn.nextInt();
			//����� �Է�(90) > ����(70) --> "DOWN"
			//����� �Է�(20) < ����(70) --> "UP"
			//����� �Է�(70) == ����(70) --> "BINGO"
			if( UserKey > Answer )
			{
				System.out.println("DOWN");				
			}else if( UserKey < Answer )
			{
				System.out.println("UP");
			}else
			{
				System.out.println("BINGO!!!");
				IsHit = true;
				break;
			}
		}
		if( IsHit == false)
		{
			System.out.println("Game Over!!");
		}
	}
}
