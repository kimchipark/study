import java.util.Scanner;

public class Example02 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		int choice ;
		int savemoney = 0;
		int money;
		while(true)
		{
			System.out.println("1.예금 2.출금 3.조회 4.종료");
			choice = input.nextInt();
			
			if(choice == 1)
			{
				System.out.print("예금할 금액을 입력하세요:");
				money = input.nextInt();
				savemoney += money;
				System.out.println(money+"원이 입금되었습니다.");
			}
			else if(choice == 2)
			{
				System.out.print("출금할 금액을 입력하세요:");
				money = input.nextInt();
				savemoney -= money;
				System.out.println(money+"원이 출금되었습니다.");
			}
			else if(choice == 3)
			{
				System.out.println("현재 잔액은 "+ savemoney + "원 입니다.");
			}
			else if(choice == 4)
			{
				System.out.println("시스템이 종료됩니다.");
				break;
			}
			else
			{
				System.out.println("잘 못 입력하셨습니다 1~4만 입력하세요");
			}
				
		}
		
		
	}

}
