public class Example01 
{
	public static void main(String[] args) 
	{
		int score[] = { 11, 22, 33 };
		
		
		try
		{
			System.out.println(score[30]);						
		}catch(Exception e)
		{
			System.out.println("예외발생");
			e.printStackTrace();
		}finally
		{
			System.out.println("Finally");
		}

		
		System.out.println("프로그램 종료!!");
	}	
}
