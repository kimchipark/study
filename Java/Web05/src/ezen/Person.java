package ezen;

public class Person 
{
	private String name;    //�̸�
	private int    age;     //����
	private String address; //������
	
	public Person()
	{
		name    = "ȫ�浿";
		age     = 20;
		address = "����ϵ� ���ֽ�";
	}

	public String getName()    { return name;	 }
	public int    getAge()     { return age;     }
	public String getAddress() { return address; }

	public void setName(String name)		{ this.name = name;	}
	public void setAge(int age) 			{ this.age = age;	}
	public void setAddress(String address)  { this.address = address;}
}



