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
		System.out.println("채팅 서버 시작...");
		
		while(IsRun)
		{
			System.out.println("채팅 클라이언드 접속 대기...");
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("채팅 서버 종료...");
	}
}
