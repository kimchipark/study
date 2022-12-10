package ezen.dto;

import ezen.dbms.*;
import ezen.vo.*;

public class BoardDTO extends DBManager
{
	//�Խù��� ����Ѵ�.
	public boolean Insert(BoardVO vo)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		//�Խù� ��� SQL ����
		String sql  = "";
		sql += "insert into board (uno,btitle,bkind,bnote) ";
		sql += "values (";
		sql += "'" + vo.getUserno() + "',";
		sql += "'" + vo.getTitle().replace("'","''") + "',";
		sql += "'" + vo.getKind() + "',";
		sql += "'" + vo.getNote().replace("'","''") + "')";		
		this.RunSQL(sql);		
		
		//��ϵ� �Խù��� ��ȣ�� ��´�.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String bno = this.GetValue("no");
		this.CloseQuery();	
		vo.setNo(bno);
		
		//÷�������� ����Ѵ�.
		if(vo.getPname().equals("") != true)
		{
			sql  = "insert into attach (bno,pname,fname) ";
			sql += "values (";
			sql += "'" + bno + "',";
			sql += "'" + vo.getPname() + "',";
			sql += "'" + vo.getFname() + "')";
			this.RunSQL(sql);	
		}
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();		
		return true;
	}
	
	//�Խù��� �����Ѵ�.
	public boolean Delete(String no)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//��� ������ �����Ѵ�.
		sql = "delete from reply ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);		
				
		//÷�������� �����Ѵ�.
		sql = "delete from attach ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);

		//�Խù��� �����Ѵ�.
		sql  = "delete from board ";
		sql += "where bno = " + no + " ";
		this.RunSQL(sql);
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();		
		return true;		
	}
	
	//�Խù� ������ �����Ѵ�.
	public boolean Update(BoardVO vo)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//�Խù��� ������Ʈ �Ѵ�.
		sql  = "update board ";
		sql += "set btitle = '" + vo.getTitle().replace("'","''") + "' , ";
		sql += "bkind = '" + vo.getKind() + "' , ";
		sql += "bnote = '" + vo.getNote().replace("'","''") + "' ";
		sql += "where bno = " + vo.getNo();
		this.RunSQL(sql);
		
		//÷�������� ������Ʈ �Ѵ�.
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
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return true;		
	}
	
	//�Խù� ������ ��ȸ�Ѵ�.
	public BoardVO Read(String no,boolean isHit)
	{
		BoardVO vo = null;
		String sql = "";
		
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return vo;
		
		//��ȸ�� ����
		if(isHit == true)
		{
			sql  = "update board set bhit = bhit + 1 where bno = " + no;
			this.RunSQL(sql);
		}
		
		//�Խù��� ������ ��´�.
		sql  = "select bno,uno,btitle,bkind,bnote,bwdate,bhit,";
		sql += "(select uname from user where uno = board.uno) as uname ";
		sql += "from board ";
		sql += "where bno = '" + no + "' ";
		this.OpenQuery(sql);
		if(this.GetNext() == false)
		{
			this.CloseQuery();
			//�����ͺ��̽� ������ �����Ѵ�.
			this.DBClose();			
			return vo;			
		}
		//�Խù� VO�� �����Ѵ�.
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
		
		//÷�������� ��´�.
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
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();			
		return vo;
	}	
}
