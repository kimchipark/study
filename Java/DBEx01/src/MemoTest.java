import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class MemoTest 
{
	public static void main(String[] args)
	{
		try
		{
			//���̺귯�� �ε��ϴ� �ҽ�
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = null;
			//�����ͺ��̽��� �����Ѵ�.
			String host = "jdbc:mysql://127.0.0.1:3306/ezen";
			host += "?useUnicode=true&characterEncoding=utf-8";
			host += "&serverTimezone=UTC";
			
			String userid = "root";
			String userpw = "ezen";
			
			conn = DriverManager.getConnection(host , userid, userpw);
			
			Statement stmt = conn.createStatement(); //sql ������ �����.
			
//			MemoVO memo = new MemoVO();
//			memo.setTitle("�̰��� �����Դϴ�.");
//			memo.setNote("�̰͵� �����Դϴ�.");
//			String sql = memo.Insert();
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
//			MemoVO memo = new MemoVO();
//			memo.setNo(33);
//			String sql = memo.Delete();
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
			MemoVO memo = new MemoVO();
			memo.setNo(31);
			memo.setTitle("�ȳ�");
			memo.setNote("�ϼ���");
			String sql = memo.Update();
			System.out.println(sql);
			stmt.executeUpdate(sql);
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println("done..");
		
	}
}
