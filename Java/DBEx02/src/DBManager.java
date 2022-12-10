import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager
{
	private Connection conn = null; //데이터 베이스 연결하기 위한 클래스
	private Statement  stmt;
	private ResultSet  result;
	
	private String	   host;
	private String	   userid;
	private String	   userpw;
	
	public DBManager()
	{
		this.host = "jdbc:mysql://127.0.0.1:3306/ezen";
		this.host += "?useUnicode=true&characterEncoding=utf-8";
		this.host += "&serverTimezone=UTC";
		
		this.userid = "root";
		this.userpw = "ezen";
	}
	public DBManager(String userid, String userpw)
	{
		this();
		this.userid = userid;
		this.userpw = userpw;
	}
	//라이브러리를 로딩하고 데이터베이스에 연결한다.
	public boolean DBOpen()
	{
		try
		{
			//라이브러리 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
		
		
		
		try 
		{
			this.conn = DriverManager.getConnection(host , userid, userpw);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	//데이터베이스 연결을 닫는다.
	public void DBClose()
	{
		try 
		{
			this.conn.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	
	//INSERT, DELETE, UPDATE
	public boolean RunSQL(String sql)
	{
		try
		{
			this.stmt = this.conn.createStatement();//sql 문장을 만든다.
			this.stmt.executeUpdate(sql); //sql 구문을 실행해라
			this.stmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
		
		return true;
	}
	
	//SELECT 처리
	public boolean OpenQuery(String sql)
	{
		
		try 
		{
			this.stmt = this.conn.createStatement();
			this.result = this.stmt.executeQuery(sql);
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	//다음 행을 가져온다.
	public boolean GetNext()
	{
		try 
		{
			return this.result.next();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
	}
	
	//컬럼의 값을 가져온다.
	public String GetValue(String columname)
	{
		try 
		{
			return this.result.getString(columname);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			return null;
		}
	}
	
	//SELECT를 종료한다.
	public void CloseQuery()
	{
		try 
		{
			this.stmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
}
