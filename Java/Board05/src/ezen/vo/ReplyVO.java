package ezen.vo;

public class ReplyVO 
{
	private String rno;      //댓글번호
	private String no;       //게시물번호
	private String userno;   //회원번호
	private String username; //회원명
	private String note;     //댓글내용
	private String wdate;    //작성일자
	
	public String getRno()      { return rno;     }
	public String getNo()       { return no;      }
	public String getUserno()   { return userno;  }
	public String getUsername() { return username;}
	public String getNote()     { return note;    }
	public String getWdate()    { return wdate;   }
	
	public void setRno(String rno)       { this.rno = rno;       }
	public void setNo(String no)         { this.no = no;         }
	public void setUserno(String userno) { this.userno = userno; }
	public void setUsername(String username) {this.username = username;}
	public void setNote(String note)     { this.note = note;     }
	public void setWdate(String wdate)   { this.wdate = wdate;   }
	
	
	
}


