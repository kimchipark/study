import java.util.Scanner;

public class Example01
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		Calculator cal = new Calculator();
		int x, y;
		
		System.out.println("정수 두 개를 입력하세요");
		x = input.nextInt();
		y = input.nextInt();
		
		cal.getCal(x, y);
		
		
		
	}

	
}
