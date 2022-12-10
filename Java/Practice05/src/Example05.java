import java.util.Scanner;
//입력한 수의 약수와 갯수를 알려주는 프로그램.
public class Example05 
{

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		int num;
		int count = 0;
		System.out.print("약수를 구할 숫자를 입력하세요:");
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
		
		System.out.println("약수의 개수는" + count + "개 입니다.");
	}

}
