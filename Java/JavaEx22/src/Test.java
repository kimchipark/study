import java.util.Scanner;

public class Test 
{
	public static void main(String[] args) 
	{
		ChatServer s = new ChatServer();
		s.start();
		
		Scanner sc = new Scanner(System.in);
		sc.nextLine();
		s.Stop();
	}
}
