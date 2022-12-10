public class MyJob extends Thread 
{
	@Override
	public void run()
	{
		for(int x=1; x <= 100; x++)
		{
			System.out.println("MyJob:" + x);
			try {
				Thread.sleep(300);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
