
public class StringTest 
{

	public static void main(String[] args) 
	{
		String id = "psj";
		String pw = "1231";
		String sql = "";
		sql = "select uid, upw, uname from user ";
		sql += "where uid = '"+ id +"' and upw = md5('"+ pw +"') ";
		
		System.out.println(sql);
	}

}
