public class Example01
{
	public static void main(String[] args) 
	{
		String str = "Hello?";
		System.out.println(str + " " + str);
		System.out.println("길이:" + str.length());
		
		str = str.toUpperCase();
		System.out.println(str);
		
		str = str.toLowerCase();
		System.out.println(str);
		
		str = "Hi";
		System.out.println(str);
		System.out.println("길이:" + str.length());
		
		str = null;
		if( str != null)
		{
			System.out.println(str);
			System.out.println("길이:" + str.length());
		}
		
		System.out.println("정상적으로 종료되었습니다.");	
		
	}
}
