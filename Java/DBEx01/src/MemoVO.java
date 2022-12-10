                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
public class MemoVO 
{
	private	int		no;		//锅龋
	private String	title;	//力格
	private String	note;	//郴侩
	private String	wdata;	//朝楼
	
	
	public void setNo(int no)			{ this.no	 = no;    }
	public void setTitle(String title)	{ this.title = title; }
	public void setNote(String note)	{ this.note  = note;  }
	public void setWdata(String wdata)	{ this.wdata = wdata; }
	
	public int 	  getNo()	 { return no;	 }
	public String getTitle() { return title; }
	public String getNote()  { return note;  }
	public String getWdata() { return wdata; }
	
	//sql insert 积己
	public String Insert()
	{
		String sql = "";
		sql = "insert into memo(title, note) ";
		sql += "values('"+ this.title +"','" + this.note + "') ";
		
		return sql;
	}
	
	//sql delete 积己
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
