public class Person 
{
	//====== �ʵ� �����
	private String name;      //�̸�
	private int    age;       //����
	
	public Person()
	{
		System.out.println("Person Ŭ���� ������.(1)");
	}
	
	public Person(String name)
	{
		this.name = name;
		System.out.println("Person Ŭ���� ������.(2)");
	}	
	
	public Person(String name,int age)
	{
		this.name = name;
		this.age  = age;
		System.out.println("Person Ŭ���� ������.(3)");
	}	

	public void setName(String name) {	this.name = name; }
	public void setAge(int age)      {  this.age = age;   }
	
	public String getName()      { return name;	       }
	public int    getAge()		 { return age;	       }
	public int    getBirthYear() { return 2022 - age;  }
	
	public void PrintInfo()
	{
		System.out.println("����:" + this.getName());
		System.out.println("����:" + this.getAge());
		System.out.println("����:" + this.getBirthYear());		
	}
	
}

