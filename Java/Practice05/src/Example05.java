import java.util.Scanner;
//�Է��� ���� ����� ������ �˷��ִ� ���α׷�.
public class Example05 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		int num;
		int count = 0;
		System.out.print("����� ���� ���ڸ� �Է��ϼ���:");
		num = input.nextInt();
		
		System.out.print("{");
		for(int i = 1; i <= num; i++)
		{
			if(num % i == 0)
			{
				if(num == i)
				{
					System.out.println(i+"}");
				}
				else
				{
					System.out.print(i+",");
				}
				count++;
			}
		}
		
		System.out.println("����� ������" + count + "�� �Դϴ�.");
	}

}
