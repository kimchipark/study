//도서관 클래스
public class Library 
{
	public static void main(String[] args) 
	{
		Book java  = new Book();
		java.title  = "이것이 자바다";
		java.author = "홍길동";
		java.price  = 1000;
		System.out.println(java.publish);
		java.PrintInfo();
		
		Book novel = new Book();
		novel.title  = "소나기";
		novel.author = "황순원";
		novel.price  = 2000;
		novel.PrintInfo();
	}
}


