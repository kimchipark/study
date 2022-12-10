public class Car 
{
	Tire tire;

	public void setTire(Tire tire) 
	{
		this.tire = tire;
	}
	
	public void Run()
	{
		tire.roll();
	}
	
}
