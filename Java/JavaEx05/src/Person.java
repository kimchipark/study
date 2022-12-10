public class Person
{
	public static void main(String[] args) 
	{
		Calculater cal = new Calculater();
		cal.x = 100;
		cal.y = 200;		
		
		int z = cal.Add();
		System.out.println(z);
		
		z = cal.Minus();
		System.out.println(z);	
		
		double r = Math.random();
	}
}

