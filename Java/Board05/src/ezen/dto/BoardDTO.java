package ezen.dto;

import ezen.dbms.*;
import ezen.vo.*;

public class BoardDTO extends DBManager
{
	//게시물을 등록한다.
	public boolean Insert(BoardVO vo)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		//게시물 등록 SQL 실행
		String sql  = "";
		sql += "insert into board (uno,btitle,bkind,bnote) ";
		sql += "values (";
		sql += "'" + vo.getUserno() + "',";
		sql += "'" + vo.getTitle().replace("'","''") + "',";
		sql += "'" + vo.getKind() + "',";
		sql += "'" + vo.getNote().replace("'","''") + "')";		
		this.RunSQL(sql);		
		
		//등록된 게시물의 번호를 얻는다.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String bno = this.GetValue("no");
		this.CloseQuery();	
		vo.setNo(bno);
		
		//첨부파일을 등록한다.
		if(vo.getPname().equals("") != true)
		{
			sql  = "insert into attach (bno,pname,fname) ";
			sql += "values (";
			sql += "'" + bno + "',";
			sql += "'" + vo.getPname() + "',";
			sql += "'" + vo.getFname() + "')";
			this.RunSQL(sql);	
		}
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();		
		return true;
	}
	
	//게시물을 삭제한다.
	public boolean Delete(String no)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//댓글 정보를 삭제한다.
		sql = "delete from reply ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);		
				
		//첨부파일을 삭제한다.
		sql = "delete from attach ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);

		//게시물을 삭제한다.
		sql  = "delete from board ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();		
		return true;		
	}
	
	//게시물 정보를 변경한다.
	public boolean Update(BoardVO vo)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//게시물을 업데이트 한다.
		sql  = "update board ";
		sql += "set btitle = '" + vo.getTitle().replace("'","''") + "' , ";
		sql += "bkind = '" + vo.getKind() + "' , ";
		sql += "bnote = '" + vo.getNote().replace("'","''") + "' ";
		sql += "where bno = " + vo.getNo();
		this.RunSQL(sql);
		
		//첨부파일을 업데이트 한다.
		if(!vo.getFname().equals(""))
		{
			sql = "delete from attach where bno = " + vo.getNo() + " ";
			this.RunSQL(sql);
		
			sql  = "insert into attach (bno,pname,fname) ";
			sql += "values (";
			sql += "'" + vo.getNo() + "',";			
			sql += "'" + vo.getPname() + "',";
			sql += "'" + vo.getFname() + "')";
			this.RunSQL(sql);
		}
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return true;		
	}
	
	//게시물 정보를 조회한다.
	public BoardVO Read(String no,boolean isHit)
	{
		BoardVO vo = null;
		String sql = "";
		
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return vo;
		
		//조회수 증가
		if(isHit == true)
		{
			sql  = "update board set bhit = bhit + 1 where bno = " + no;
			this.RunSQL(sql);
		}
		
		//게시물의 정보를 얻는다.
		sql  = "select bno,uno,btitle,bkind,bnote,bwdate,bhit,";
		sql += "(select uname from user where uno = board.uno) as uname ";
		sql += "from board ";
		sql += "where bno = '" + no + "' ";
		this.OpenQuery(sql);
		if(this.GetNext() == false)
		{
			this.CloseQuery();
			//데이터베이스 연결을 종료한다.
			this.DBClose();			
			return vo;			
		}
		//게시물 VO를 생성한다.
		vo = new BoardVO();
		
		vo.setNo(no);
		vo.setUserno(this.GetValue("uno"));
		vo.setUsername(this.GetValue("uname"));
		vo.setTitle(this.GetValue("btitle"));
		vo.setKind(this.GetValue("bkind"));
		vo.setNote(this.GetValue("bnote"));
		vo.setWdate(this.GetValue("bwdate"));
		vo.setHit(this.GetValue("bhit"));
		this.CloseQuery();
		
		//첨부파일을 얻는다.
		sql  = "select ano,fname,pname ";
		sql += "from attach ";
		sql += "where bno = '" + no + "' ";
		this.OpenQuery(sql);
		String ano   = "";
		String fname = "";
		if(this.GetNext() == true)
		{	
			vo.setAno(this.GetValue("ano"));
			vo.setFname(this.GetValue("fname"));
			vo.setPname(this.GetValue("pname"));
		}
		this.CloseQuery();
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();			
		return vo;
	}	
}
