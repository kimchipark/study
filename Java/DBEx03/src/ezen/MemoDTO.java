package ezen;

import java.util.ArrayList;

public class MemoDTO extends DBManager
{
	public boolean Insert(MemoVO vo)
	{
		String sql = "";
		sql += "insert into memo ";
		sql += "(title, note) ";
		sql += "values ('"+ _R(vo.getTitle()) + "','";
		sql += ""+ _R(vo.getNote()) + "') ";
		
		return RunSQL(sql);
	}
	
	public boolean Delete(MemoVO vo)
	{
		String sql = "";
		sql += "delete from memo ";
		sql += "where no = " + vo.getNo();
		
		return RunSQL(sql);
	}
	
	public boolean Update(MemoVO vo)
	{ 
		String sql = "";
		sql += "update memo ";
		sql += "set title = '" + _R(vo.getTitle()) + "', ";
		sql += "note = '" + _R(vo.getNote()) + "' ";
		sql += "where no = " + vo.getNo();
		
		return RunSQL(sql);
	}
	
	public boolean Select(MemoVO vo)
	{
		
		String sql = "";
		sql += "select title, note, wdate ";
		sql += "from memo ";
		sql += "where no = " + vo.getNo();
		
		if(OpenQuery(sql) == false)
		{
			return false;
		}
		
		if(this.GetNext() == false)
		{
			return false;
		}
		
		vo.setTitle(this.GetValue("title"));
		vo.setNote(this.GetValue("note"));
		vo.setWdate(this.GetValue("wdate"));
		
		CloseQuery();
		return true;
	}
	
	public MemoVO Read(int no)
	{
		String sql = "";
		sql += "select title, note, wdate ";
		sql += "from memo ";
		sql += "where no = " + no;
		
		if(OpenQuery(sql) == false)
		{
			return null;
		}
		
		if(this.GetNext() == false)
		{
			return null;
		}
		
		MemoVO vo = new MemoVO();
		vo.setTitle(this.GetValue("title"));
		vo.setNote(this.GetValue("note"));
		vo.setWdate(this.GetValue("wdate"));
		vo.setNo(no);
		CloseQuery();
		return vo;
	}
	
	public ArrayList<MemoVO> List()
	{
		String sql = "";
		sql += "select no, title, note, wdate ";
		sql += "from memo ";
		
		if(OpenQuery(sql) == false)
		{
			return null;
		}
		
		ArrayList<MemoVO> list = new ArrayList<MemoVO>();
		
		while(GetNext() == true)
		{
			MemoVO vo = new MemoVO();
			vo.setNo(this.GetInt("no"));
			vo.setTitle(this.GetValue("title"));
			vo.setNote(this.GetValue("note"));
			vo.setWdate(this.GetValue("wdate"));
			list.add(vo);
		}
		
		CloseQuery();
		
		return list;
	}
}
