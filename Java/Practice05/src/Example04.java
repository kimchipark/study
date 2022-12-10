import java.util.Scanner;
//숫자를 입력해서 지폐랑 동전으로 구분해주기.
public class Example04 
{

	public static void main(String[] args)
	{
		Scanner input = new Scanner(System.in);
		int coin[] = {50000, 10000, 5000, 1000, 500, 100, 50, 10, 1};
		System.out.print("돈을 입력하세요:");
		
		int money = input.nextInt();
		
		for(int i = 0 ; i < coin.length ; i++)
		{
			if(coin[i] >= 1000)
			{	
				System.out.println(coin[i] + "원 :" + (money / coin[i]) + "장" );
			}
			else
			{
				System.out.println(coin[i] + "원 :" + (money / coin[i]) + "개" );
			}
			money %= coin[i];
		}
	}

}
