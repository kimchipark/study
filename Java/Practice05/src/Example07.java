//1~100 사이의 컴퓨터가 생각한 숫자 맞추기
import java.util.Scanner;

public class Example07 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		int random = (int)(Math.random()*100) + 1;
		int num;
		int count = 0;
		
		while(true)
		{
			System.out.print("1과 100사이의 값을 입력하세요 :");
			num = input.nextInt();
			
			if(num > 100)
			{
				System.out.println("잘 못 입력하셨습니다.");
				continue;
			}
			
			count++;
			if(num < random)
			{
				System.out.println("더 큰 수를 입력하세요");
			}
			else if(num > random)
			{
				System.out.println("더 작은 수를 입력하세요");
			}
			else
			{
				System.out.println("맞췄습니다.");
				System.out.println("시도 횟수는 " + count + "번 입니다");
				break;
			}
		}
		
		
	}

}
