public class Cal 
{
	public int Div(int x,int y) 
			throws Exception
	{
		try
		{
			return x / y;
		}catch(Exception e)
		{
			throw new Exception("������ �����Ӵ�.");
		}
	}
}
