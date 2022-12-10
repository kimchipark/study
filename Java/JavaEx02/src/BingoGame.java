import java.util.Scanner;

public class BingoGame 
{
	public static void main(String[] args) 
	{
		int count = 0;		
		int Answer = (int)(Math.random() * 1000) % 100 + 1;
		System.out.println("정답:" + Answer);
		
		Scanner KeyIn = new Scanner(System.in);
		while(true)
		{
			int UserKey;
			System.out.print("입력[ " + (5 - count) + "번 남음 ]:");
			UserKey = KeyIn.nextInt();
			//사용자 입력(90) > 정답(70) --> "DOWN"
			//사용자 입력(20) < 정답(70) --> "UP"
			//사용자 입력(70) == 정답(70) --> "BINGO"
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
