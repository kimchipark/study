package ezen;

public class Person 
{
	private String name;    //이름
	private int    age;     //나이
	private String address; //거주지
	
	public Person()
	{
		name    = "홍길동";
		age     = 20;
		address = "전라북도 전주시";
	}

	public String getName()    { return name;	 }
	public int    getAge()     { return age;     }
	public String getAddress() { return address; }

	public void setName(String name)		{ this.name = name;	}
	public void setAge(int age) 			{ this.age = age;	}
	public void setAddress(String address)  { this.address = address;}
}



