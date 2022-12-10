package ezen.dto;

import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

public class ReplyDTO extends DBManager
{
	private ArrayList<ReplyVO> list;
	
	//댓글을 등록한다.
	public boolean Insert(ReplyVO vo)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		//댓글 등록 SQL 실행
		String sql = "";
		sql  = "insert into reply ";
		sql += "(bno,uno,rnote) ";
		sql += "values(";
		sql += "'" + vo.getNo() + "',";
		sql += "'" + vo.getUserno() + "',";
		sql += "'" + vo.getNote().replace("'","''") + "')";
		this.RunSQL(sql);	
		
		//등록된 댓글의 번호를 얻는다.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String rno = this.GetValue("no");
		this.CloseQuery();	
		vo.setRno(rno);

		//데이터베이스 연결을 종료한다.
		this.DBClose();		
		return true;
	}
	
	//댓글을 삭제한다.
	public boolean Delete(String rno)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//댓글 정보를 삭제한다.
		sql  = "delete from reply ";
		sql += "where reno = " + rno;
		this.RunSQL(sql);
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();		
		return true;		
	}
	
	//게시물 정보를 변경한다.
	public boolean Update(ReplyVO vo)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//게시물을 업데이트 한다.
		sql  = "update reply ";
		sql += "set rnote = '" + vo.getNote().replace("'","''") + "' ";
		sql += "where reno = " + vo.getRno();
		this.RunSQL(sql);
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return true;		
	}
	
	//댓글 정보를 조회한다.
	public ReplyVO Read(String rno)
	{
		ReplyVO vo = null;
		String sql = "";
		
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return vo;
		
		//댓글의 정보를 얻는다.
		sql  = "select reno,bno,uno,rnote,";
		sql += "date(rwdate) as rwdate, ";
		sql += "(select uname from user where uno = reply.uno) as uname ";	
		sql += "from reply ";
		sql += "where reno = " + rno + " ";
		this.OpenQuery(sql);
		if(this.GetNext() == false)
		{
			this.CloseQuery();
			//데이터베이스 연결을 종료한다.
			this.DBClose();			
			return vo;			
		}
		//게시물 VO를 생성한다.
		vo = new ReplyVO();
			
		vo.setRno(this.GetValue("reno"));
		vo.setNo(this.GetValue("bno"));
		vo.setUserno(this.GetValue("uno"));
		vo.setNote(this.GetValue("rnote"));
		vo.setWdate(this.GetValue("rwdate"));
		vo.setUsername(this.GetValue("uname"));
		this.CloseQuery();	
		
		return vo;
	}
	
	//댓글 목록을 조회한다.
	public boolean GetList(String no)
	{
		String sql = "";
		
		this.list = null;
		
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
				
		//댓글 목록을 조회한다.
		sql  = "select reno,bno,uno,rnote,";
		sql += "date(rwdate) as rwdate, ";
		sql += "(select uname from user where uno = reply.uno) as uname ";	
		sql += "from reply ";
		sql += "where bno = " + no + " ";
		sql += "order by reno desc ";
		this.OpenQuery(sql);
		while(this.GetNext() == true)
		{
			String reno   = this.GetValue("reno");
			String uno  = this.GetValue("uno");
			String rnote = this.GetValue("rnote");
			String rwdate = this.GetValue("rwdate");
			String uname = this.GetValue("uname");
			
			if( this.list == null )
			{
				this.list = new ArrayList<ReplyVO>();  
			}
			ReplyVO vo = new ReplyVO();
			vo.setRno(reno);
			vo.setNo(no);
			vo.setUserno(uno);
			vo.setUsername(uname);
			vo.setNote(rnote);
			vo.setWdate(rwdate);
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
	public ReplyVO GetItem(int index)
	{
		if(this.list == null) return null;
		else return list.get(index);		
	}
	
	//목록을 ArrayList로 몽땅 얻는다.
	public ArrayList<ReplyVO> GetListArray()
	{
		return this.list;
	}	
}
