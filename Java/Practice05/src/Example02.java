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
			System.out.println("1.���� 2.��� 3.��ȸ 4.����");
			choice = input.nextInt();
			
			if(choice == 1)
			{
				System.out.print("������ �ݾ��� �Է��ϼ���:");
				money = input.nextInt();
				savemoney += money;
				System.out.println(money+"���� �ԱݵǾ����ϴ�.");
			}
			else if(choice == 2)
			{
				System.out.print("����� �ݾ��� �Է��ϼ���:");
				money = input.nextInt();
				savemoney -= money;
				System.out.println(money+"���� ��ݵǾ����ϴ�.");
			}
			else if(choice == 3)
			{
				System.out.println("���� �ܾ��� "+ savemoney + "�� �Դϴ�.");
			}
			else if(choice == 4)
			{
				System.out.println("�ý����� ����˴ϴ�.");
				break;
			}
			else
			{
				System.out.println("�� �� �Է��ϼ̽��ϴ� 1~4�� �Է��ϼ���");
			}
				
		}
		
		
	}

}
