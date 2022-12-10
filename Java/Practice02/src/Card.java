
public class Card 
{
	public static int id = 0;
	public int	customerId;
	
	public Card()
	{
		this.id++;
		this.customerId = this.id;
	}
}
