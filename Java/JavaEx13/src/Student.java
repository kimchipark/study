public class Student extends Person 
{ 
	//====== �ʵ� �����
	private int    grade;    //�г�
	private String school;   //�б���
	
	public Student()
	{
		super("��ƹ���");
		System.out.println("Student Ŭ���� ������.");
	}

	public void setGrade(int grade)      {	this.grade = grade; 	}
	public void setSchool(String school) {	this.school = school;	}

	public int    getGrade()  {	return grade;	}
	public String getSchool() { return school;	}
	
	@Override
	public void PrintInfo()
	{
		super.PrintInfo();
		System.out.println("�г�:" + this.getGrade());
		System.out.println("�б�:" + this.getSchool());
	}
}
