//1~100 ������ ��ǻ�Ͱ� ������ ���� ���߱�
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
			System.out.print("1�� 100������ ���� �Է��ϼ��� :");
			num = input.nextInt();
			
			if(num > 100)
			{
				System.out.println("�� �� �Է��ϼ̽��ϴ�.");
				continue;
			}
			
			count++;
			if(num < random)
			{
				System.out.println("�� ū ���� �Է��ϼ���");
			}
			else if(num > random)
			{
				System.out.println("�� ���� ���� �Է��ϼ���");
			}
			else
			{
				System.out.println("������ϴ�.");
				System.out.println("�õ� Ƚ���� " + count + "�� �Դϴ�");
				break;
			}
		}
		
		
	}

}
