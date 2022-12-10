package ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager 
{
	private Connection conn = null;
	private Statement  stmt;
	private ResultSet  result;
	
	private String     host;
	private String     userid;
	private String     userpw;
	
	public DBManager()
	{
		host   = "jdbc:mysql://127.0.0.1:3306/boarddb";
		host  += "?useUnicode=true&characterEncoding=utf-8";
		host  += "&serverTimezone=UTC";
		userid = "root";
		userpw = "ezen";		
	}
	
	public DBManager(String userid,String userpw)
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
			//jdbc 라이브러리 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");	
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}	
				
		//데이터베이스에 연결한다.
		try 
		{
			conn = DriverManager.getConnection(
					host,userid,userpw);
		} catch (SQLException e) 
		{
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	//데이터베이스 연결을 닫는다.
	public void DBClose()
	{
		//db연결을 닫는다.
		try 
		{
			conn.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}		
	}

	//INSERT,DELETE,UPDATE처리한다.
	public boolean RunSQL(String sql)
	{
		System.out.println(sql);
		
		//SQL 작업을 위한 문맥을 생성한다.
		Statement stmt;
		try 
		{
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}		
		return true;		
	}
	
	//SELECT 처리를 시작한다.
	public boolean OpenQuery(String sql)
	{
		System.out.println(sql);
		
		//SQL 작업을 위한 문맥을 생성한다.
		try 
		{
			stmt   = conn.createStatement();
			result = stmt.executeQuery(sql);
		} catch (SQLException e) 
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
			return result.next();
		} catch (SQLException e) 
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
			return result.getString(columname);
		} catch (SQLException e) 
		{
			return null;
		}
	}
	
	//컬럼의 값을 가져온다.
	public int GetInt(String columname)
	{		
		try 
		{
			return result.getInt(columname);
		} catch (SQLException e) 
		{
			return 0;
		}
	}	

	//SELECT를 종료한다.
	public void CloseQuery()
	{
		try 
		{
			stmt.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	
	public String _R(String value)
	{
		return value.replace("'","''");
	}		
}
