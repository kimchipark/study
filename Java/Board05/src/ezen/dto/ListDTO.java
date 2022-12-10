package ezen.dto;

import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

//�Խù� ��� �������� Ŭ����
public class ListDTO extends DBManager
{
	//�Խù� ��Ͽ� ���� ����
	private ArrayList<BoardVO> list;
	//�˻� ���� ó����
	private String where;
	
	public ListDTO()
	{
		where = "";
	}
	
	//�˻� ������ �����Ѵ�.
	//type: ����(T), ����(N), ����+����(A)
	public void SetSearch(String kind,String type,String keyword) 
	{
		where = "where bkind = '" + kind + "' ";
		
		if(!keyword.equals(""))
		{
			switch(type)
			{
			case "T": //����
				where += " and btitle like '%" + keyword + "%' ";
				break;
			case "N": //����
				where += " and bnote like '%" + keyword + "%' ";
				break;
			case "A": //����+����
				where += " and ( btitle like '%" + keyword + "%' ";
				where += " or bnote like '%" + keyword + "%' ) ";
				break;			
			}
		}
	}
	
	//��ü �Խù� ������ ��´�.
	public int GetTotal()
	{
		int total = 0;
		
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return 0;
		
		//��ü ������ ��´�.
		String sql;
		sql  = "select count(*) as count ";
		sql += "from board ";
		sql += where;
		
		this.OpenQuery(sql);
		this.GetNext();
		total = this.GetInt("count");
		this.CloseQuery();		
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		
		return total;
	}	
	
	//�Խù� ����� �����´�.
	//curpage : ���� ������ ��ȣ
	public boolean GetList(int curpage)
	{
		String sql = "";
		
		this.list = null;
		
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		//SQL��  limit ���� ��ȣ�� ����Ѵ�.
		int startno = (curpage - 1) * 10;
		
		//�Խù� ����� ��ȸ�Ѵ�.
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
	public BoardVO GetItem(int index)
	{
		if(this.list == null) return null;
		else return list.get(index);		
	}
	
	//����� ArrayList�� ���� ��´�.
	public ArrayList<BoardVO> GetListArray()
	{
		return this.list;
	}		
}


