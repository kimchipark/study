public interface RemoteCon 
{
	void turnOn();
	void turnOff();
	
	default public void PowerRate()
	{
		System.out.println("full charge..");
	}
}


