public class Book 
{
	String title;  //제목
	String author; //저자
	int    price;  //가격
	
	void SetInfo(String title,String author,int price)
	{
		this.title  = title;
		this.author = author;
		this.price  = price;
	}
	
	void Print()
	{
		System.out.println("제목:" + this.title);
		System.out.println("저자:" + this.author);
		System.out.println("가격:" + this.price);		
	}	
	
	public static void main(String args[])
	{
		Book b = new Book();
		b.SetInfo("책 제목1","홍길동",1000);
		b.Print();
		b.SetInfo("책 제목2","박문수",1000);
		b.Print();		
				
				
	}
}
