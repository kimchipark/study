public class Test 
{
	public static void main(String[] args) 
	{
		Work wa = new Work();
		wa.name = "jobA";
		//wa.run();
		wa.start();
		
		MyJob wb = new MyJob();
		//wb.run();
		wb.start();
		
		System.out.println("작업이 끝났습니다.");
	}
}
