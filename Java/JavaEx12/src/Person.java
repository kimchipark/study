public class Person 
{
	//====== �ʵ� �����
	private String name;      //�̸�
	private int    birthyear; //����
	private int    age;       //����

	//====== setter �����	
	public void setName(String name)        {	this.name = name;	        }
	public void setBirthyear(int birthyear) {	this.birthyear = birthyear;	}
	public void setAge(int age)             {	this.age = age;             }
	
	//====== getter �����	
	public String getName()      {	return name;	  }
	public int    getBirthyear() {	return birthyear; }
	public int    getAge()       {	return age;	      }	
}

