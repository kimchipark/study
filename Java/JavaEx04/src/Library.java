//������ Ŭ����
public class Library 
{
	public static void main(String[] args) 
	{
		Book java  = new Book();
		java.title  = "�̰��� �ڹٴ�";
		java.author = "ȫ�浿";
		java.price  = 1000;
		System.out.println(java.publish);
		java.PrintInfo();
		
		Book novel = new Book();
		novel.title  = "�ҳ���";
		novel.author = "Ȳ����";
		novel.price  = 2000;
		novel.PrintInfo();
	}
}


