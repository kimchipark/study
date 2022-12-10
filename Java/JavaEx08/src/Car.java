public class Car 
{
	String name;  //차종
	String color; //색상
	
	public Car()
	{
		name  = "소나타";
		color = "black";
		System.out.println("Car 생성자 1번");
	}
	
	public Car(String name)
	{
		this();
		this.name = name;
		System.out.println("Car 생성자 2번");		
	}
	
	void SetColor(String color)
	{
		this.color = color;
	}
	
}


