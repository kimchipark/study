public class Example02
{
	public static void main(String []args)
	{
		int x = 1;
		int y;
		x = x + 1;
		x += 1;
		x++; //->  x = x + 1; 
		++x; //->  x = x + 1; 
		y = (x++); //-> y = x; x = x+ 1;
		System.out.println(y);
		y = (++x); //-> x = x + 1; y = x;
		System.out.println(y);	
		//x -> 7		
		y = (++x) + (x++);	
		System.out.println(y);
		System.out.println(x);
	}
}
