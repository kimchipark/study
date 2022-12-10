import java.util.Scanner;
public class BankApplication 
{
	private static Account[] accountArray = new Account[100];
	private static Scanner scan = new Scanner(System.in);
	
	
	public static void main(String[] args)
	{
		boolean run = true;
		
		while(run)
		{
			System.out.println("---------------------------------------");
			System.out.println("1.���»��� | 2.���¸�� | 3.���� | 4.��� | 5.����");
			System.out.println("---------------------------------------");
			System.out.print("����> ");
			
			int selectNo = scan.nextInt();
			
			if(selectNo == 1)
			{
				createAccount();
			}
			else if(selectNo == 2)
			{
				accountList();
			}
			else if(selectNo == 3)
			{
				deposit();
			}
			else if(selectNo == 4)
			{
				withdraw();
			}
			else if(selectNo == 5)
			{
				run = false;
			}
		}
		
		System.out.println("���α׷� ����");
	}
	//���¹�ȣ ����
	private static void createAccount()
	{
		scan.nextLine();
		System.out.print("���¹�ȣ: ");
		String ano = scan.nextLine();
		
		System.out.print("������: ");
		String owner = scan.nextLine();
		
		System.out.print("�ʱ��Աݾ�: ");
		int balance = scan.nextInt();

		Account account = new Account(ano, owner, balance);
		
		for(int i = 0 ; i < accountArray.length ; i++)
		{
			if(accountArray[i] == null)
			{
				accountArray[i] = account;
				System.out.println("���°� �����Ǿ����ϴ�.");
				break;
			}
		}
		
	}
	//���¹�ȣ ���
	private static void accountList()
	{
		System.out.println("-------");
		System.out.println("���¸��");
		System.out.println("-------");
		for(int i = 0 ; i < accountArray.length ; i++)
		{
			if(accountArray[i] == null)
				break;
			
			System.out.println(accountArray[i].getAno() + "  " + accountArray[i].getOwner() + "   " + accountArray[i].getBalance());
		}
	}
	
	private static void deposit()
	{
		System.out.println("-------");
		System.out.println("����");
		System.out.println("-------");
		
		System.out.print("���¹�ȣ: ");
		String ano = scan.nextLine();
		
		
		
	}
	
	private static void withdraw()
	{
		
	}
	
	private static Account findAccount(String ano)
	{
		Account account = new Account(ano, null, 0);
		
		for(int i = 0 ; i < accountArray.length ; i++)
		{
			if(accountArray[i] == null)
				break;
			if(accountArray[i].getAno().equals(ano))
			{
				account = accountArray[i];
			}
		}
		
		return account;
	}

}
