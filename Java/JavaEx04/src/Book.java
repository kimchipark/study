//도서 정보 클래스
public class Book 
{
	String title;   //제목	
	String author;  //저자
	int    price;   //가격
	String publish; //출판사
	
	Book()
	{
		publish = "이젠출판사";
		System.out.println("생성자 호출");
	}
	
	void PrintInfo()
	{
		System.out.println("제목:" + title);
		System.out.println("저자:" + author);
		System.out.println("가격:" + price);		
	}
}



