package ezen.vo;

//ȸ������ Ŭ����
public class UserVO 
{
	private String no;       //ȸ����ȣ
	private String id;       //ȸ�� ���̵�
	private String pw;       //���
	private String name;     //�̸�
	private String gender;   //����
	private String hobby;    //���
	private String retire;   //Ż�𿩺�

	public UserVO()
	{
	}
	
	
	public String getNo()     { return no;    }
	public String getId()     { return id;    }
	public String getPw()     { return pw;    }
	public String getName()   { return name;  }
	public String getGender() { return gender;}
	public String getHobby()  { return hobby; }
	public String getRetire() { return retire;}

	public void setNo(String no)         { this.no = no;         }
	public void setId(String id)         { this.id = id;         }
	public void setPw(String pw)         { this.pw = pw;         }
	public void setName(String name)     { this.name = name;     }
	public void setGender(String gender) { this.gender = gender; }
	public void setHobby(String hobby)   { this.hobby = hobby;   }
	public void setRetire(String retire) { this.retire = retire; }

	public String getGenderName()
	{
		if(gender.equals("M"))
		{
			return "��";
		}else
		{
			return "��";
		}
	}

	public String getHobbyName() {
		if( hobby.equals("001"))
		{
			return "����";
		}else if( hobby.equals("002"))
		{
			return "����";
		}else
		{
			return "����";
		}
	}
	
	public void PrintInfo()
	{
		System.out.println("ȸ����ȣ :" + no);
		System.out.println("���̵� :" + id);
		System.out.println("�̸� :" + name);
		System.out.println("���� :" + getGenderName());
		System.out.println("��� :" + hobby);
		System.out.println("Ż�𿩺� :" + retire);
	}	
}


