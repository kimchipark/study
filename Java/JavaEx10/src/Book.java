public class Book 
{
	String title;  //����
	String author; //����
	int    price;  //����
	
	void SetInfo(String title,String author,int price)
	{
		this.title  = title;
		this.author = author;
		this.price  = price;
	}
	
	void Print()
	{
		System.out.println("����:" + this.title);
		System.out.println("����:" + this.author);
		System.out.println("����:" + this.price);		
	}	
	
	public static void main(String args[])
	{
		Book b = new Book();
		b.SetInfo("å ����1","ȫ�浿",1000);
		b.Print();
		b.SetInfo("å ����2","�ڹ���",1000);
		b.Print();		
				
				
	}
}
