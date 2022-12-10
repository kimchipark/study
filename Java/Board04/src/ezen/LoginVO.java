package ezen;

//로그인 객체
public class LoginVO 
{	
	private String id;   //아이디
	private String no;   //회원번호
	private String name; //회원이름
	
	public void setId(String id)     { this.id = id;     }
	public void setNo(String no)     { this.no = no;  	 }
	public void setName(String name) { this.name = name; }
	
	public String getId()   { return id;   }
	public String getNo()   { return no;   }
	public String getName() { return name; }
}
