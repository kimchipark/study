                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
public class MemoVO 
{
	private	int		no;		//��ȣ
	private String	title;	//����
	private String	note;	//����
	private String	wdata;	//��¥
	
	
	public void setNo(int no)			{ this.no	 = no;    }
	public void setTitle(String title)	{ this.title = title; }
	public void setNote(String note)	{ this.note  = note;  }
	public void setWdata(String wdata)	{ this.wdata = wdata; }
	
	public int 	  getNo()	 { return no;	 }
	public String getTitle() { return title; }
	public String getNote()  { return note;  }
	public String getWdata() { return wdata; }
	
	//sql insert ����
	public String Insert()
	{
		String sql = "";
		sql = "insert into memo(title, note) ";
		sql += "values('"+ this.title +"','" + this.note + "') ";
		
		return sql;
	}
	
	//sql delete ����
	public String Delete()
	{
		String sql = "";
		sql = "delete from memo where no = " + this.no;
		return sql;
	}
	
	public String Update()
	{
		String sql = "";
		sql = "update memo ";
		sql += "set title = '" + this.title + "', ";
		sql += "note = '" + this.note + "' ";
		sql += "where no =" + this.no;
		return sql;
	}
}
