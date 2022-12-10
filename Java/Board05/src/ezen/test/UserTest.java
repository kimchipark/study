package ezen.test;

import ezen.dto.*;
import ezen.vo.*;

public class UserTest 
{
	public static void main(String[] args) 
	{
		UserVO user = new UserVO();
		
		user.setId("ezen");
		user.setPw("ezen");
		user.setName("홍길동");
		user.setGender("M");
		user.setHobby("001");
		user.setRetire("N");
		
		UserDTO dto = new UserDTO();
		if( dto.IsDuplicate("ezen") == UserDTO.NOT_DUPLICATE)
		{
			dto.Insert(user);
		}else
		{
			System.out.println("ID가 중복됨.");
		}
		
		 UserVO login = dto.Login("ezen", "ezen");
		 if( login == null)
		 {
			 System.out.println("로그인 실패");
		 }else
		 {
			 login.PrintInfo();
		 }
		
	}
}
