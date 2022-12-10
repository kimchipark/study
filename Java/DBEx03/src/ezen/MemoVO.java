package ezen;

public class MemoVO 
{
	private	int		no;		//번호
	private String	title;	//제목
	private String	note;	//내용
	private String	wdate;	//날짜
	
	public void setNo(int no) 			{ this.no = no;		  }
	public void setTitle(String title)  { this.title = title; }
	public void setNote(String note) 	{ this.note = note;   }
	public void setWdate(String wdate)  { this.wdate = wdate; }
	
	public int 	  getNo() 	 { return no;	 }
	public String getTitle() { return title; }
	public String getNote()  { return note;  }
	public String getWdate() { return wdate; }
	
	public void PrintInfo()
	{
		System.out.println("no:" + no);
		System.out.println("title:" + title);
		System.out.println("note:" + note);
		System.out.println("wdate:" + wdate);
	}
	
}
