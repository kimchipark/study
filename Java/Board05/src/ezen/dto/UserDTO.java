package ezen.dto;
import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

public class UserDTO extends DBManager
{
	public final static int ID_ERROR      = 0;
	public final static int DUPLICATE     = 1;
	public final static int NOT_DUPLICATE = 2;
		
	//ȸ�� ���̵� �ߺ� �˻�
	//���ϰ� : ERROR - ����, DUPLICATE - �ߺ�, NOT_DUPLICATE - �ߺ��ƴ� 
	public int IsDuplicate(String id)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) 
		{
			return ID_ERROR;			
		}
		
		//�ߺ��˻� SQL�� �����Ѵ�.
		String sql = "";
		sql  = "select uid ";
		sql += "from user ";
		sql += "where uid = '" + id +"' ";
		this.OpenQuery(sql);
		if(this.GetNext() == true)
		{
			//ID�� �ߺ���
			this.CloseQuery();
			this.DBClose();
			return DUPLICATE;
		}			
		this.CloseQuery();
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return NOT_DUPLICATE;
	}
	
	//ȸ�� ���� ó��
	//���ϰ� : true-��ϿϷ�, falg-����
	public boolean Insert(UserVO vo)
	{
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return false;
		
		//user ���̺� Insert�ϴ� ������ �����.
		String sql = "";
		sql  = "";
		sql += "insert into user (uid,upw,uname,ugender,uhobby,uretire) ";
		sql += "values (";
		sql += "'" + vo.getId() + "',";
		sql += "md5('" + vo.getPw() + "'),";
		sql += "'" + vo.getName() + "',";
		sql += "'" + vo.getGender() + "',";
		sql += "'" + vo.getHobby() + "',";		
		sql += "'" + vo.getRetire() + "')";
		this.RunSQL(sql);		
		
		//��ϵ� ���̵��� ��ȣ�� ��´�.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String uno = this.GetValue("no");
		vo.setNo(uno);
		this.CloseQuery();		
		
		/*
		//fav ���̺� Insert�ϴ� ������ �����.
		ArrayList<FavVO> ary = vo.getFav();
		for(int i=0; i < ary.size(); i++)
		{
			FavVO fav = (FavVO)ary.get(i);
			sql = "insert into fav (uno,fkind,fname) values (";
			sql += "'" + uno + "',";
			sql += "'" + fav.getKind() + "',";
			sql += "'" + fav.getName() + "')";	
			this.RunSQL(sql);	
		}
		*/
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return true;
	}
	
	//�α��� ó���Ѵ�.
	//���ϰ� : null - �α��� ����, UserVO - �α��� ����
	public UserVO Login(String id,String pw)
	{
		UserVO vo = null;
		
		//�����ͺ��̽��� �����Ѵ�.
		//�����ͺ��̽��� �����Ѵ�.
		if(this.DBOpen() == false) return vo;
		
		//id/pw�� �̿��Ͽ� �α��� ������ �����´�.	
		String sql = "";
		sql  = "select uno,uname,ugender,uhobby,uretire ";
		sql += "from user ";
		sql += "where uid = '" + id + "' ";
		sql += "and upw = md5('" + pw + "') ";
		sql += "and uretire = 'N' ";
		this.OpenQuery(sql);
		if(this.GetNext() == false)
		{
			this.CloseQuery();
			//�����ͺ��̽� ������ �����Ѵ�.
			this.DBClose();
			return vo;
		}
		//�α��� ����� VO�� �����Ѵ�.
		vo = new UserVO();
		vo.setNo(this.GetValue("uno"));
		vo.setId(id);
		vo.setName(this.GetValue("uname"));
		vo.setGender(this.GetValue("ugender"));
		vo.setHobby(this.GetValue("uhobby"));
		vo.setRetire(this.GetValue("uretire"));
		this.CloseQuery();
		
		//�����ͺ��̽� ������ �����Ѵ�.
		this.DBClose();
		return vo;		
	}
}
