public class Person 
{
	//====== 필드 선언부
	private String name;      //이름
	private int    birthyear; //생년
	private int    age;       //나이

	//====== setter 선언부	
	public void setName(String name)        {	this.name = name;	        }
	public void setBirthyear(int birthyear) {	this.birthyear = birthyear;	}
	public void setAge(int age)             {	this.age = age;             }
	
	//====== getter 선언부	
	public String getName()      {	return name;	  }
	public int    getBirthyear() {	return birthyear; }
	public int    getAge()       {	return age;	      }	
}

