import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class MemoTest 
{
	public static void main(String[] args)
	{
		try
		{
			//라이브러리 로딩하는 소스
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = null;
			//데이터베이스에 연결한다.
			String host = "jdbc:mysql://127.0.0.1:3306/ezen";
			host += "?useUnicode=true&characterEncoding=utf-8";
			host += "&serverTimezone=UTC";
			
			String userid = "root";
			String userpw = "ezen";
			
			conn = DriverManager.getConnection(host , userid, userpw);
			
			Statement stmt = conn.createStatement(); //sql 문장을 만든다.
			
//			MemoVO memo = new MemoVO();
//			memo.setTitle("이것은 제목입니다.");
//			memo.setNote("이것도 내용입니다.");
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
			memo.setTitle("안녕");
			memo.setNote("하세요");
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
