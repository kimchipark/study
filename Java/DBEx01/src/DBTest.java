import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBTest
{
	public static void main(String[] args)
	{
		try
		{
			//���̺귯�� �ε�
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("error!!");
			return;
		}
		
		Connection conn = null; //������ ���̽� �����ϱ� ���� Ŭ����
		
		String host = "jdbc:mysql://127.0.0.1:3306/ezen";
		host += "?useUnicode=true&characterEncoding=utf-8";
		host += "&serverTimezone=UTC";
		
		String userid = "root";
		String userpw = "ezen";
		
		try
		{
			
			conn = DriverManager.getConnection(host , userid, userpw); //�����ͺ��̽��� �����Ѵ�.
			Statement stmt = conn.createStatement(); //sql ������ �����.
			
			//insert
//			for( int i = 1; i <=10 ; i++)
//			{	
//				String sql = "insert into memo";
//				sql += "(title, note)";
//				sql += "values('" + i + "��° ����','" + i + "��° ����');";
//				
//				stmt.executeUpdate(sql); //sql ������ �����ض�
//			}
			
			//delete
//			String sql = "delete from memo ";
//			sql += "where no = 26 ";
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
			//update
//			String sql = "";
//			sql = "update memo ";
//			sql +="set title = '����� �����Դϴ�.' ";
//			sql +="where no = 28 ";
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
			//select << executeQuery(); ���
			
			String sql = "";
			sql = "select no, title, note ";
			sql += "from memo ";
			sql += "where no < 29 and no >=24 ";
			sql += "order by no desc ";
			
			//select ������� result�� ������
			ResultSet result = stmt.executeQuery(sql);
			System.out.println("no || title || note");
			while(result.next()) //���پ� ������
			{
				String no = result.getString("no");
				String title = result.getString("title");
				String note = result.getString("note");
				
				System.out.println(no + "||" + title + "||" + note);
			}
			conn.close();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			System.out.println("error!!");
			return;
		}
		
		System.out.println("done!!");
	}
		
}
