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
	
	//���̺귯���� �ε��ϰ� �����ͺ��̽��� �����Ѵ�.
	public boolean DBOpen()
	{
		try
		{			
			//jdbc ���̺귯�� �ε�
			Class.forName("com.mysql.cj.jdbc.Driver");	
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}	
				
		//�����ͺ��̽��� �����Ѵ�.
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
	
	//�����ͺ��̽� ������ �ݴ´�.
	public void DBClose()
	{
		//db������ �ݴ´�.
		try 
		{
			conn.close();
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}		
	}

	//INSERT,DELETE,UPDATEó���Ѵ�.
	public boolean RunSQL(String sql)
	{
		System.out.println(sql);
		
		//SQL �۾��� ���� ������ �����Ѵ�.
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
	
	//SELECT ó���� �����Ѵ�.
	public boolean OpenQuery(String sql)
	{
		System.out.println(sql);
		
		//SQL �۾��� ���� ������ �����Ѵ�.
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
	
	//���� ���� �����´�.
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
	
	//�÷��� ���� �����´�.
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
	
	//�÷��� ���� �����´�.
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

	//SELECT�� �����Ѵ�.
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
