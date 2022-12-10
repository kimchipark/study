
public class Test 
{

	public static void main(String[] args) 
	{
		Customer lee = new Customer("이지은",15000);
		Customer kim = new Customer("김태연",67000);
		
		Cafe Starbucks = new Cafe("스타벅스");
		
		Cafe CoffeeBean = new Cafe("커피빈");
		
		lee.buy(Starbucks);
		lee.buy(CoffeeBean);
		
		kim.buy(Starbucks);

		lee.PrintInfo();
		kim.PrintInfo();
		
		Starbucks.PrintInfo();
		CoffeeBean.PrintInfo();
		
		
		
	}

}
