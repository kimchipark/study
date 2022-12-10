
public class Driver 
{
	public static void main(String[] args) 
	{
		Car sonata = new Car();
		System.out.println(sonata.name);
		System.out.println(sonata.color);
		
		Car g80 = new Car("제네시스");
		g80.SetColor("red");
		System.out.println(g80.name);
		System.out.println(g80.color);
	}

}
