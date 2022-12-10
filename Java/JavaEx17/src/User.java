public class User 
{
	public static void main(String[] args) 
	{
		Calculater c = new Calculater();
		
		int result = 0;
		try 
		{
			result = c.Add("1000","2000");
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		System.out.println(result);
	}
}

