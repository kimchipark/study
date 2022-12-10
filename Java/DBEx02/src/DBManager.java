import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager
{
	private Connection conn = null; //������ ���̽� �����ϱ� ���� Ŭ����
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
	//���̺귯���� �ε��ϰ� �����ͺ��̽��� �����Ѵ�.
	public boolean DBOpen()
	{
		try
		{
			//���̺귯�� �ε�
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
	
	//�����ͺ��̽� ������ �ݴ´�.
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
			this.stmt = this.conn.createStatement();//sql ������ �����.
			this.stmt.executeUpdate(sql); //sql ������ �����ض�
			this.stmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
		
		return true;
	}
	
	//SELECT ó��
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
	//���� ���� �����´�.
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
	
	//�÷��� ���� �����´�.
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
	
	//SELECT�� �����Ѵ�.
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
