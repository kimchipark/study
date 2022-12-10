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
			System.out.println("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
			System.out.println("---------------------------------------");
			System.out.print("선택> ");
			
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
		
		System.out.println("프로그램 종료");
	}
	//계좌번호 생성
	private static void createAccount()
	{
		scan.nextLine();
		System.out.print("계좌번호: ");
		String ano = scan.nextLine();
		
		System.out.print("계좌주: ");
		String owner = scan.nextLine();
		
		System.out.print("초기입금액: ");
		int balance = scan.nextInt();

		Account account = new Account(ano, owner, balance);
		
		for(int i = 0 ; i < accountArray.length ; i++)
		{
			if(accountArray[i] == null)
			{
				accountArray[i] = account;
				System.out.println("계좌가 생성되었습니다.");
				break;
			}
		}
		
	}
	//계좌번호 목록
	private static void accountList()
	{
		System.out.println("-------");
		System.out.println("계좌목록");
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
		System.out.println("예금");
		System.out.println("-------");
		
		System.out.print("계좌번호: ");
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
