public class Car 
{
	String name;  //����
	String color; //����
	
	public Car()
	{
		name  = "�ҳ�Ÿ";
		color = "black";
		System.out.println("Car ������ 1��");
	}
	
	public Car(String name)
	{
		this();
		this.name = name;
		System.out.println("Car ������ 2��");		
	}
	
	void SetColor(String color)
	{
		this.color = color;
	}
	
}


