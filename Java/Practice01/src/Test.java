
public class Test 
{

	public static void main(String[] args) 
	{
		Customer lee = new Customer("������",15000);
		Customer kim = new Customer("���¿�",67000);
		
		Cafe Starbucks = new Cafe("��Ÿ����");
		
		Cafe CoffeeBean = new Cafe("Ŀ�Ǻ�");
		
		lee.buy(Starbucks);
		lee.buy(CoffeeBean);
		
		kim.buy(Starbucks);

		lee.PrintInfo();
		kim.PrintInfo();
		
		Starbucks.PrintInfo();
		CoffeeBean.PrintInfo();
		
		
		
	}

}
