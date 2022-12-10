import java.util.Scanner;

public class Phone 
{
	private String name;
	private String tel;
	
	public Phone(String name, String tel)
	{
		this.name = name;
		this.tel = tel;
	}
	
	public String getName() { return this.name; }
	public String getTel() { return this.tel; }
	
	public static void main(String[] args) 
	{
		Scanner scan = new Scanner(System.in);
		Phone[] arr = new Phone[2];
		String name;
		String tel;
		
		for(int i = 0; i < arr.length ; i++)
		{
			System.out.print("�̸��� ��ȭ��ȣ �Է� >> ");
			name = scan.next();
			tel = scan.next();
			arr[i] = new Phone(name, tel);
		}
		
		for(int i = 0 ; i < arr.length ; i++)
		{
			System.out.println(arr[i].getName() + "�� ��ȣ:" + arr[i].getTel());
		}
	}

}
