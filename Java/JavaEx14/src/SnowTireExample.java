public class SnowTireExample 
{
	public class Tire
	{
		public void run()
		{
			System.out.println("tire");
		}
	}
	
	public class SnowTire extends Tire
	{
		@Override
		public void run()
		{
			System.out.println("snow tire");
		}		
	}
	
	public void Run()
	{
		SnowTire s = new SnowTire();
		Tire t =  s;
		
		s.run();
		t.run();		
	}
	
	public static void main(String[] args) {
		SnowTireExample s = new SnowTireExample();
		s.Run();
	}

}
