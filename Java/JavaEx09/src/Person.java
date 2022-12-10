public class Person 
{
	public static void main(String[] args) 
	{	
		Circle c = new Circle();
		c.radious = 10;
		double result = c.GetArea();
		
		result = Circle.GetArea(20);
	}
}
