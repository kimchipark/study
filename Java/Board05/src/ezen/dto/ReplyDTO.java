package ezen.dto;

import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

public class ReplyDTO extends DBManager
{
	private ArrayList<ReplyVO> list;
	
	//����� ����Ѵ�.
	public boolean Insert(ReplyVO vo)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		//��� ��� SQL ����
		String sql = "";
		sql  = "insert into reply ";
		sql += "(bno,uno,rnote) ";
		sql += "values(";
		sql += "'" + vo.getNo() + "',";
		sql += "'" + vo.getUserno() + "',";
		sql += "'" + vo.getNote().replace("'","''") + "')";
		this.RunSQL(sql);	
		
		//��ϵ� ����� ��ȣ�� ��´�.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String rno = this.GetValue("no");
		this.CloseQuery();	
		vo.setRno(rno);

		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();		
		return true;
	}
	
	//����� �����Ѵ�.
	public boolean Delete(String rno)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//��� ������ �����Ѵ�.
		sql  = "delete from reply ";
		sql += "where reno = " + rno;
		this.RunSQL(sql);
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();		
		return true;		
	}
	
	//�Խù� ������ �����Ѵ�.
	public boolean Update(ReplyVO vo)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		String sql = "";
		
		//�Խù��� ������Ʈ �Ѵ�.
		sql  = "update reply ";
		sql += "set rnote = '" + vo.getNote().replace("'","''") + "' ";
		sql += "where reno = " + vo.getRno();
		this.RunSQL(sql);
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return true;		
	}
	
	//��� ������ ��ȸ�Ѵ�.
	public ReplyVO Read(String rno)
	{
		ReplyVO vo = null;
		String sql = "";
		
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return vo;
		
		//����� ������ ��´�.
		sql  = "select reno,bno,uno,rnote,";
		sql += "date(rwdate) as rwdate, ";
		sql += "(select uname from user where uno = reply.uno) as uname ";	
		sql += "from reply ";
		sql += "where reno = " + rno + " ";
		this.OpenQuery(sql);
		if(this.GetNext() == false)
		{
			this.CloseQuery();
			//�����ͺ��̽� ������ �����Ѵ�.
			this.DBClose();			
			return vo;			
		}
		//�Խù� VO�� �����Ѵ�.
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
	
	//��� ����� ��ȸ�Ѵ�.
	public boolean GetList(String no)
	{
		String sql = "";
		
		this.list = null;
		
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
				
		//��� ����� ��ȸ�Ѵ�.
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
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return true;
	}
	
	//��ȸ�� ����� ������ ��´�.
	public int GetListTotal()
	{
		if(this.list == null) return 0;
		else return list.size();
	}
	
	//��Ͽ��� �Խù� ������ ��´�.
	public ReplyVO GetItem(int index)
	{
		if(this.list == null) return null;
		else return list.get(index);		
	}
	
	//����� ArrayList�� ���� ��´�.
	public ArrayList<ReplyVO> GetListArray()
	{
		return this.list;
	}	
}
