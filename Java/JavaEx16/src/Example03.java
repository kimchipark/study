public class Example03 
{
	public static void main(String[] args) 
	{
		int x,y,z;
		int ary[] = { 1, 2, 3 };	
		String str = null;
		try
		{
			x = 10;
			y = 10;
			z = x / y;
			z = ary[0];
			str.toUpperCase();
		}catch(ArithmeticException e)
		{
			System.out.println("���н� ������~~");
		}catch(ArrayIndexOutOfBoundsException e)
		{
			System.out.println("�迭 ������~~");
		}catch(Exception e)
		{
			System.out.println("��Ÿ ������~~");
		}
		System.out.println("OK");
	}

}
