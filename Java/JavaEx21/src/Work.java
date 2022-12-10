public class Work implements Runnable 
{
	public String name;
	
	public Work()
	{
		name = "work";
	}
	
	@Override
	public void run()
	{
		for(int i=0; i <= 20; i++)
		{
			System.out.println(name + "=" + i);
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}	
}
