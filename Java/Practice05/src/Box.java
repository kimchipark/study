
public class Box 
{
	private int width;
	private int height;
	
	private char fillchar;
	public Box()
	{
		this(10,1);
	}
	public Box(int width, int height)
	{
		this.width = width;
		this.height = height;
		
	}
	
	public void draw()
	{
		for(int i = 0 ; i < this.height; i++)
		{
			for(int j = 0 ; j < this.width; j++)
			{
				System.out.print(this.fillchar);
			}
			System.out.println();
		}
	}
	
	public void fill(char c)
	{
		this.fillchar = c;
	}
	public static void main(String[] args) 
	{
		Box a = new Box();
		Box b = new Box(5,3);
		a.fill('*');
		b.fill('%');
		a.draw();
		b.draw();
		
	}

}
