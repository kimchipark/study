public class ChatServer extends Thread 
{
	private boolean IsRun = true; 
	
	public void Stop()
	{
		IsRun = false;
	}
	
	@Override
	public void run()
	{
		System.out.println("ä�� ���� ����...");
		
		while(IsRun)
		{
			System.out.println("ä�� Ŭ���̾�� ���� ���...");
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("ä�� ���� ����...");
	}
}
