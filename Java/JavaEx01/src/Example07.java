public class Example07 
{
	public static void main(String[] args) 
	{
		/*
		//소수점의 랜덤한 숫자값을 생성한다. 
		double rnd = Math.random() * 100;
		System.out.println(rnd);
		
		//정수형으로 변환한다.
		int dice = (int)rnd;
		System.out.println(dice);
		
		//6으로 나눈 나머지를 구하고, 1을 더한다. ( 1 ~ 6 값이 얻어짐)
		dice = (dice % 6) + 1;
		System.out.println(dice);
		*/
		//1~6까지 랜덤한 숫자를 만들어 낸다.
		int dice = (((int)(Math.random() * 100)) % 6) + 1;		
		System.out.println(dice);
		if( dice == 1)
		{
			System.out.println("1번");
		}else if( dice == 2)
		{
			System.out.println("2번");
		}else if( dice == 3)
		{
			System.out.println("3번");
		}else if( dice == 4)
		{
			System.out.println("4번");
		}else if( dice == 5)
		{
			System.out.println("5번");
		}else
		{
			System.out.println("6번");
		}
		
	}
}
