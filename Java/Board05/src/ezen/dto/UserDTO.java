package ezen.dto;
import java.util.ArrayList;

import ezen.dbms.*;
import ezen.vo.*;

public class UserDTO extends DBManager
{
	public final static int ID_ERROR      = 0;
	public final static int DUPLICATE     = 1;
	public final static int NOT_DUPLICATE = 2;
		
	//회원 아이디 중복 검사
	//리턴값 : ERROR - 오류, DUPLICATE - 중복, NOT_DUPLICATE - 중복아님 
	public int IsDuplicate(String id)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) 
		{
			return ID_ERROR;			
		}
		
		//중복검사 SQL을 실행한다.
		String sql = "";
		sql  = "select uid ";
		sql += "from user ";
		sql += "where uid = '" + id +"' ";
		this.OpenQuery(sql);
		if(this.GetNext() == true)
		{
			//ID가 중복됨
			this.CloseQuery();
			this.DBClose();
			return DUPLICATE;
		}			
		this.CloseQuery();
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return NOT_DUPLICATE;
	}
	
	//회원 가입 처리
	//리턴값 : true-등록완료, falg-오류
	public boolean Insert(UserVO vo)
	{
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return false;
		
		//user 테이블에 Insert하는 구문을 만든다.
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
		
		//등록된 아이디의 번호를 얻는다.
		sql = "select last_insert_id() as no ";
		this.OpenQuery(sql);
		this.GetNext();
		String uno = this.GetValue("no");
		vo.setNo(uno);
		this.CloseQuery();		
		
		/*
		//fav 테이블에 Insert하는 구문을 만든다.
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
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return true;
	}
	
	//로그인 처리한다.
	//리턴값 : null - 로그인 실패, UserVO - 로그인 성공
	public UserVO Login(String id,String pw)
	{
		UserVO vo = null;
		
		//데이터베이스에 연결한다.
		//데이터베이스에 연결한다.
		if(this.DBOpen() == false) return vo;
		
		//id/pw를 이용하여 로그인 정보를 가져온다.	
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
			//데이터베이스 연결을 종료한다.
			this.DBClose();
			return vo;
		}
		//로그인 사용자 VO를 생성한다.
		vo = new UserVO();
		vo.setNo(this.GetValue("uno"));
		vo.setId(id);
		vo.setName(this.GetValue("uname"));
		vo.setGender(this.GetValue("ugender"));
		vo.setHobby(this.GetValue("uhobby"));
		vo.setRetire(this.GetValue("uretire"));
		this.CloseQuery();
		
		//데이터베이스 연결을 종료한다.
		this.DBClose();
		return vo;		
	}
}
