
public class Customer 
{
	public String	name;
	public int		money;
	
	public Customer(String name, int money)
	{
		this.name = name;
		this.money = money;
	}
	
	public void buy(Cafe cafe)
	{
		cafe.take(4000);
		this.money -= 4000;
	}
	
	public void PrintInfo()
	{
		System.out.println(this.name+"학생의 남은 돈은 "+this.money+"원입니다");
	}
}
