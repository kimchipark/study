
public class DBTest 
{

	public static void main(String[] args) 
	{
		DBManager db = new DBManager("root", "ezen");
		if( db.DBOpen() == false ) //반환값이 false면 프로그램 종료
		{
			System.out.println("error!");
			return;
		}
		//플래그 변수
		int runmode = 1;
		
		String sql = "";
		switch(runmode)
		{
		case 0:
			for(int i = 1; i <= 100; i++)
			{
				sql = "insert into memo ";
				sql += "(title, note) ";
				sql += "values ('"+ i + " 번째 제목입니다.','" + i + " 번째내용입니다') ";
				db.RunSQL(sql);
			}
			break;
		case 1:
			sql = "delete from memo ";
			db.RunSQL(sql);
			break;
		case 2:
			sql = "update memo ";
			sql += "set title ='java', ";
			sql += "note = 'programming' ";
			sql += "where no = 302 ";
			db.RunSQL(sql);
			break;
		case 3:
			sql = "select no, title, note ";
			sql += "from memo ";
			db.OpenQuery(sql);
			while(db.GetNext()) //한줄씩 가져옴
			{
				String title = db.GetValue("title");
				System.out.println(title);
			}
			db.CloseQuery();
			break;
		}
		
		db.DBClose();
		
		System.out.println("done...");
		
	}

}
