//���� ���� Ŭ����
public class Book 
{
	String title;   //����	
	String author;  //����
	int    price;   //����
	String publish; //���ǻ�
	
	Book()
	{
		publish = "�������ǻ�";
		System.out.println("������ ȣ��");
	}
	
	void PrintInfo()
	{
		System.out.println("����:" + title);
		System.out.println("����:" + author);
		System.out.println("����:" + price);		
	}
}



