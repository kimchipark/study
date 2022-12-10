public class Student extends Person 
{ 
	//====== 필드 선언부
	private int    grade;    //학년
	private String school;   //학교명
	
	public Student()
	{
		super("김아무개");
		System.out.println("Student 클래스 생성자.");
	}

	public void setGrade(int grade)      {	this.grade = grade; 	}
	public void setSchool(String school) {	this.school = school;	}

	public int    getGrade()  {	return grade;	}
	public String getSchool() { return school;	}
	
	@Override
	public void PrintInfo()
	{
		super.PrintInfo();
		System.out.println("학년:" + this.getGrade());
		System.out.println("학교:" + this.getSchool());
	}
}
