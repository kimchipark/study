
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
		System.out.println("������ �մ��� "+this.count+"���Դϴ�");
		System.out.println(this.cafeName+"�� ������ "+this.money+"���Դϴ�");
	}
}
