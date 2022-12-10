
public class Cafe 
{
	public String	cafeName;
	public int		count;
	public int		money;
	
	public Cafe(String cafeName)
	{
		this.cafeName = cafeName;
	}
	
	public void take(int money)
	{
		this.money += money;
		this.count++;
	}
	
	public void PrintInfo()
	{
		System.out.println("오늘의 손님은 "+this.count+"명입니다");
		System.out.println(this.cafeName+"의 수입은 "+this.money+"원입니다");
	}
}
