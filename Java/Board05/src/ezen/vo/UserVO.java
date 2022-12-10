package ezen.vo;

//회원정보 클래스
public class UserVO 
{
	private String no;       //회원번호
	private String id;       //회원 아이디
	private String pw;       //비번
	private String name;     //이름
	private String gender;   //성별
	private String hobby;    //취미
	private String retire;   //탈퇴여부

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
			return "남";
		}else
		{
			return "여";
		}
	}

	public String getHobbyName() {
		if( hobby.equals("001"))
		{
			return "낚시";
		}else if( hobby.equals("002"))
		{
			return "여행";
		}else
		{
			return "게임";
		}
	}
	
	public void PrintInfo()
	{
		System.out.println("회원번호 :" + no);
		System.out.println("아이디 :" + id);
		System.out.println("이름 :" + name);
		System.out.println("성별 :" + getGenderName());
		System.out.println("취미 :" + hobby);
		System.out.println("탈퇴여부 :" + retire);
	}	
}


