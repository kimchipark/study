import java.util.Scanner;
//���ڸ� �Է��ؼ� ����� �������� �������ֱ�.
public class Example04 
{

	public static void main(String[] args)
	{
		Scanner input = new Scanner(System.in);
		int coin[] = {50000, 10000, 5000, 1000, 500, 100, 50, 10, 1};
		System.out.print("���� �Է��ϼ���:");
		
		int money = input.nextInt();
		
		for(int i = 0 ; i < coin.length ; i++)
		{
			if(coin[i] >= 1000)
			{	
				System.out.println(coin[i] + "�� :" + (money / coin[i]) + "��" );
			}
			else
			{
				System.out.println(coin[i] + "�� :" + (money / coin[i]) + "��" );
			}
			money %= coin[i];
		}
	}

}
