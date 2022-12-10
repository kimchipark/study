package ezen.dto;

import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

//게시물 목록 가져오기 클래스
public class ListDTO extends DBManager
{
	//게시물 목록에 대한 변수
	private ArrayList<BoardVO> list;
	//검색 조건 처리용
	private String where;
	
	public ListDTO()
	{
		where = "";
	}
	
	//검색 조건을 설정한다.
	//type: 제목(T), 내용(N), 제목+내용(A)
	public void SetSearch(String kind,String type,String keyword) 
	{
		where = "where bkind = '" + kind + "' ";
		
		if(!keyword.equals(""))
		{
			switch(type)
			{
			case "T": //제목
				where += " and btitle like '%" + keyword + "%' ";
				break;
			case "N": //내용
				where += " and bnote like '%" + keyword + "%' ";
				break;
			case "A": //제목+내용
				where += " and ( btitle like '%" + keyword + "%' ";
				where += " or bnote like '%" + keyword + "%' ) ";
				break;			
			}
		}
	}
	
	//전체 게시물 갯수를 얻는다.
	public int GetTotal()
	{
		int total = 0;
		
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return 0;
		
		//전체 갯수를 얻는다.
		String sql;
		sql  = "select count(*) as count ";
		sql += "from board ";
		sql += where;
		
		this.OpenQuery(sql);
		this.GetNext();
		total = this.GetInt("count");
		this.CloseQuery();		
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		
		return total;
	}	
	
	//게시물 목록을 가져온다.
	//curpage : 현재 페이지 번호
	public boolean GetList(int curpage)
	{
		String sql = "";
		
		this.list = null;
		
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		//SQL의  limit 시작 번호를 계산한다.
		int startno = (curpage - 1) * 10;
		
		//게시물 목록을 조회한다.
		sql  = "select bno,uno,btitle,bkind,date(bwdate) as bwdate,bhit,\n";
		sql += "(select uname from user where uno = board.uno) as uname,\n";
		sql += "(select count(*) from reply where bno = board.bno) as rpno \n";
		sql += "from board ";
		sql += where;
		sql += "order by bno desc \n";		
		sql += "limit " + startno + ",10\n";
		this.OpenQuery(sql);
		while(this.GetNext() == true)
		{
			String bno     = this.GetValue("bno");
			String uno     = this.GetValue("uno");
			String btitle  = this.GetValue("btitle");
			String bkind   = this.GetValue("bkind");
			String bwdate  = this.GetValue("bwdate");
			String bhit    = this.GetValue("bhit");
			String uname   = this.GetValue("uname");
			String rpno    = this.GetValue("rpno");	
			
			if( this.list == null )
			{
				this.list = new ArrayList<BoardVO>();  
			}
			BoardVO vo = new BoardVO();
			vo.setNo(bno);
			vo.setTitle(btitle);
			vo.setUserno(uno);
			vo.setUsername(uname);
			vo.setKind(bkind);
			vo.setHit(bhit);
			vo.setWdate(bwdate);
			vo.setRCount(rpno);
			list.add(vo);
		}		
		this.CloseQuery();
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return true;		
	}
	
	//조회된 목록의 갯수를 얻는다.
	public int GetListTotal()
	{
		if(this.list == null) return 0;
		else return list.size();
	}
	
	//목록에서 게시물 정보를 얻는다.
	public BoardVO GetItem(int index)
	{
		if(this.list == null) return null;
		else return list.get(index);		
	}
	
	//목록을 ArrayList로 몽땅 얻는다.
	public ArrayList<BoardVO> GetListArray()
	{
		return this.list;
	}		
}


