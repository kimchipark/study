//https://kin.naver.com/qna/detail.naver?d1id=1&dirId=1040201&docId=180636476&qb=amF2YeyXsOyKteusuOygnA==&enc=utf8��ion=kin.ext&rank=3&search_sort=0&spq=0
import java.util.Scanner;

public class Example09
{
	Scanner scan = new Scanner(System.in);
	
	public void work1()//������ �ܼ� �ϳ� �Է¹޾Ƽ� ����ϰ� ���� ���� 9�� ����̸� ������� �ʴ� ���α׷�
	{
		int num = 0;
		
		while(true)
		{
			System.out.print("���� �ϳ� �Է�:");
			num = scan.nextInt();
		
			if(num > 0 )
			{
				for(int i = 1; i <= 9 ; i++)
				{
					if( (num * i) % 9 != 0)
						System.out.println(num + "x" + i + "=" + (num*i));
				}
				break;
			}
			else
			{
				System.out.println("����� �ƴմϴ�. �ٽ� �Է��ϼ���.");
			}
		}
	}
	
	public void work2()//���ѷ���+����ġ �׽�Ʈ
	{
		int choice;
		
		System.out.println("***�ʱ� �޴�***");
		System.out.println("1.�Է�");
		System.out.println("2.����");
		System.out.println("3.��ȸ");
		System.out.println("4.����");
		System.out.println("7.����");
		while(true)
		{
			System.out.print("�޴���ȣ �Է�:");
			choice = scan.nextInt();
			System.out.print("=> ó������: ");
			
			switch(choice)
			{
			case 1:
				System.out.println("�Է¸޴��� ���õǾ����ϴ�.");
				break;
			case 2:
				System.out.println("�����޴��� ���õǾ����ϴ�.");
				break;
			case 3:
				System.out.println("��ȸ�޴��� ���õǾ����ϴ�.");
				break;
			case 4:
				System.out.println("�����޴��� ���õǾ����ϴ�.");
				break;
			case 7:
				System.out.println("���α׷��� ����˴ϴ�.");
				return;
			default:
				System.out.println("��ȣ�� �߸� �ԷµǾ����ϴ�. �ٽ� �Է��ϼ���");
				break;
			}
		}		
	}
	
	public void work3() //���� �ΰ��� �Է��Ͽ� �� ���������� ū������ �� ���ϴ� ���α׷�.
	{
		int n1 = 0;
		int n2 = 0;
		int sum = 0;
		
		System.out.print("ù��° ��:");
		n1 = scan.nextInt();
		System.out.print("�ι�° ��:");
		n2 = scan.nextInt();
		
		
		if( n1 < n2)
		{
			for(int i = n1; i<=n2; i++)
			{
				sum += i;
			}
			System.out.println(n1 + "����" + n2 + "���� �������� ��:" + sum);
		}
		else if( n1 > n2)
		{
			for(int i = n2; i<=n1; i++)
			{
				sum += i;
			}
			System.out.println(n2 + "����" + n1 + "���� �������� ��:" + sum);
		}
		else
		{
			System.out.println(n1 + "�� " + n2 + "�� ���� �����ϴ�.");
		}
	}
	
	public void work4() // ���� �ϳ��� �Է¹޾Ƽ� ����� ���α׷�.
	{
		int end = 0;
		
		System.out.print("������ �Է��ϼ��� :");
		end = scan.nextInt();
		
		if(end > 0)
		{
			for( int i = 0 ; i < end ; i++)
			{
				for(int j = 0; j < i; j++ )
				{
					System.out.print("*");
				}
				System.out.println(i+1);
			}
		}
		else
			System.out.println("����� �ƴմϴ�.");
		
		
	}

	public void work5() // ������ �Է¹޾� ����� ���Ƕ�̵� ������ ���Ƕ�̵� ���
	{
		int num = 0;
		
		System.out.print("���� �Է� :");
		num = scan.nextInt();
		
		if(num > 0 )
		{
			for(int i = 0 ; i < num ; i++)
			{
				for(int j = 0; j <= i ; j++)
				{
					System.out.print("*");
				}
				System.out.println();
			}
		}
		else if(num < 0)
		{
			num = num * -1;
			for(int  i = 0 ; i < num; i++)
			{
				for(int j = 0; j < i; j++)
				{
					System.out.print(" ");
				}
				
				for(int k = i ; k < num ; k++)
				{
					System.out.print("*");
				}
				
				System.out.println();
			}
		}
	}

	public void selectMenu() // ���ݰ�� �迭�̿�;
	{
		String[] food = {"�Ұ�����", "ġŲ����", "����Ƣ��", "ġ�ƽ", "������", "�ݶ�", "���̵�", "Ŀ��"};
		int[] price = { 3500, 3200, 1000, 400, 2000, 700, 1200, 1000};
		int[] count = { 0, 0, 0, 0, 0, 0, 0, 0 };
		int choice;
		int input;
		int result = 0;
		char insert;
		while(true)
		{
			System.out.println("*** �޴��� �����ϼ��� ***");
			System.out.println("*** �ܹ��� ***");
			System.out.println("1.�Ұ�� ���� 3500��");
			System.out.println("2.ġŲ���� 3200��");
			System.out.println("*** �߰� ***");
			System.out.println("3.����Ƣ�� 1000��");
			System.out.println("4.ġ�ƽ 400��");
			System.out.println("5.������ 2000��");
			System.out.println("*** ����� ***");
			System.out.println("6.�ݶ� 700��");
			System.out.println("7.���̵� 1200��");
			System.out.println("8.Ŀ�� 1000��");
			System.out.println("********************");
			
			System.out.print("�޴�����:");
			choice = scan.nextInt();
			
			switch(choice)
			{
			case 1:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 2:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 3:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 4:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 5:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 6:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 7:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 8:
				System.out.println(food[choice-1]+"�� �����ϼ̽��ϴ�.");
				System.out.print("���� :");
				input = scan.nextInt();
				System.out.println(input + "�� �ֹ� �ϼ̽��ϴ�");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			}
			
			System.out.print("�߰� �ֹ� �Ͻðڽ��ϱ�? (y/n) :");
			insert = scan.next().charAt(0);
			
			if(insert == 'y')
				continue;
			else
			{
				System.out.println("*�ֹ��Ͻ� ������ ������ �����ϴ�.*");
				System.out.println("-----------------------");
				for(int i = 0 ; i < count.length; i++)
				{
					if(count[i] != 0)
					{
						System.out.println(food[i] + ":" + count[i] + "�� -" + (price[i]*count[i]) + "��");
					}
				}
				System.out.println("----------------------");
				System.out.println("�� ���� :" + result);
				break;
			}
				
		}
		
		
	}
	
	public void work6() //���ڿ��� �Է¹ް� �׹��ڼӿ� ���ϴ� ���ĺ��� ��ִ��� Ȯ�ν����ִ� ���α׷�.
	{
		String str;
		char input;
		int count = 0;
		boolean alpa = false;
		
		System.out.print("���ڿ� �Է� : ");
		str = scan.nextLine();
		
		for(int i = 0; i < str.length() ; i++)
		{
			if((str.charAt(i) >= 65 && str.charAt(i) <= 90) ||
					(str.charAt(i) >= 97 && str.charAt(i) <=122))
			{
				alpa = true;
			}
			else
			{
				System.out.println("�����ڸ� �Է����ּ���");
				break;
			}
		}
		
		if(alpa)
		{
			System.out.print("���� �Է� : ");
			input = scan.next().charAt(0);
			
			for( int i = 0 ; i < str.length() ; i++)
			{
				if(str.charAt(i) == input)
					count++;
			}
			
			System.out.println("���Ե� ����:" + count);
		}
	}
	public static void main(String[] args) 
	{
		Example09 ex = new Example09();
		
//		ex.work1();
//		ex.work2();
//		ex.work3();
//		ex.work4();
//		ex.work5();
		ex.work6();
//		ex.selectMenu();
		
		
	}

}
