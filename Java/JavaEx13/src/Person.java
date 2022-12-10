public class Person 
{
	//====== 필드 선언부
	private String name;      //이름
	private int    age;       //나이
	
	public Person()
	{
		System.out.println("Person 클래스 생성자.(1)");
	}
	
	public Person(String name)
	{
		this.name = name;
		System.out.println("Person 클래스 생성자.(2)");
	}	
	
	public Person(String name,int age)
	{
		this.name = name;
		this.age  = age;
		System.out.println("Person 클래스 생성자.(3)");
	}	

	public void setName(String name) {	this.name = name; }
	public void setAge(int age)      {  this.age = age;   }
	
	public String getName()      { return name;	       }
	public int    getAge()		 { return age;	       }
	public int    getBirthYear() { return 2022 - age;  }
	
	public void PrintInfo()
	{
		System.out.println("성명:" + this.getName());
		System.out.println("나이:" + this.getAge());
		System.out.println("생년:" + this.getBirthYear());		
	}
	
}

