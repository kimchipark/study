public class Driver 
{
	public static void main(String[] args) 
	{
		Car sonata = new Car();

		Tire tire1 = new Tire();
		sonata.setTire(tire1);
		sonata.Run();
		
		NexenTire tire2 = new NexenTire();
		sonata.setTire(tire2);
		sonata.Run();		
		
		HankukTire tire3 = new HankukTire();
		sonata.setTire(tire3);
		sonata.Run();
	}

}
