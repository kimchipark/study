import java.util.Scanner;

public class CalculatorTest 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		Calculator cal = new Calculator();
		
		int num1, num2;
		String sign;
		
		System.out.println("사칙연산 계산기");
		num1 = input.nextInt();
		input.nextLine();
		sign = input.nextLine();
		num2 = input.nextInt();
		
		System.out.println(num1+sign+num2+"="+cal.getCalculator(num1, num2, sign));
		
	}

}
