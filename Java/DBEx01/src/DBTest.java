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
			//라이브러리 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("error!!");
			return;
		}
		
		Connection conn = null; //데이터 베이스 연결하기 위한 클래스
		
		String host = "jdbc:mysql://127.0.0.1:3306/ezen";
		host += "?useUnicode=true&characterEncoding=utf-8";
		host += "&serverTimezone=UTC";
		
		String userid = "root";
		String userpw = "ezen";
		
		try
		{
			
			conn = DriverManager.getConnection(host , userid, userpw); //데이터베이스에 연결한다.
			Statement stmt = conn.createStatement(); //sql 문장을 만든다.
			
			//insert
//			for( int i = 1; i <=10 ; i++)
//			{	
//				String sql = "insert into memo";
//				sql += "(title, note)";
//				sql += "values('" + i + "번째 제목','" + i + "번째 내용');";
//				
//				stmt.executeUpdate(sql); //sql 구문을 실행해라
//			}
			
			//delete
//			String sql = "delete from memo ";
//			sql += "where no = 26 ";
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
			//update
//			String sql = "";
//			sql = "update memo ";
//			sql +="set title = '변경된 제목입니다.' ";
//			sql +="where no = 28 ";
//			System.out.println(sql);
//			stmt.executeUpdate(sql);
			
			//select << executeQuery(); 사용
			
			String sql = "";
			sql = "select no, title, note ";
			sql += "from memo ";
			sql += "where no < 29 and no >=24 ";
			sql += "order by no desc ";
			
			//select 결과값을 result에 저장함
			ResultSet result = stmt.executeQuery(sql);
			System.out.println("no || title || note");
			while(result.next()) //한줄씩 가져옴
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
