public class Calculater 
{
	public int Add(String x, String y) 
			throws Exception
	{
		int num1 = 0;
		int num2 = 0;
		try
		{
			num1 = Integer.parseInt(x);
			num2 = Integer.parseInt(y);
		}catch(Exception e)
		{
			//throw e;
			throw new Exception("���� ��� �����Դϴ�.");
		}
		return num1 + num2;
	}
}
