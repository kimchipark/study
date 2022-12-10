import java.util.Scanner;

public class BingoGameEx 
{
	public static void main(String[] args) 
	{
		boolean IsHit = false;
		int Answer = (int)(Math.random() * 1000) % 100 + 1;
		System.out.println("정답:" + Answer);
		
		Scanner KeyIn = new Scanner(System.in);
		for(int i = 0 ; i < 5; i++)
		{
			int UserKey;
			System.out.print("입력[ " + (5 - i) + "번 남음 ]:");
			UserKey = KeyIn.nextInt();
			//사용자 입력(90) > 정답(70) --> "DOWN"
			//사용자 입력(20) < 정답(70) --> "UP"
			//사용자 입력(70) == 정답(70) --> "BINGO"
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
