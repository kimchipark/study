public class Test 
{
	public static void main(String[] args) 
	{
		Runnable wa = new Work();
		Thread threadA = new Thread(wa);
		threadA.start();
		
		Thread threadB = new Thread(wa);
		threadB.start();	
		
		Thread threadC = new Thread(new Work());
		threadC.start();
		
		System.out.println("작업이 끝났습니다.");
	}

}
