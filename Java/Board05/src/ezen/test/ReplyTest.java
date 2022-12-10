package ezen.test;

import ezen.dto.*;
import ezen.vo.*;

public class ReplyTest 
{
	public static void main(String[] args) 
	{
		/*
		ReplyVO vo = new ReplyVO();
		
		vo.setNo("3");
		vo.setUserno("1");
		vo.setNote("댓글등록 테스트");
		
		ReplyDTO dto = new ReplyDTO();
		for(int i=1; i < 20; i++)
		{
			String note = String.format("[%2d]번째 댓글 테스트",i);
			vo.setNote(note);
			dto.Insert(vo);
		}
		*/
		
		/*
		ReplyVO vo = new ReplyVO();
		vo.setRno("38");
		vo.setNo("3");
		vo.setUserno("1");
		vo.setNote("댓글변경 테스트");
		
		ReplyDTO dto = new ReplyDTO();
		dto.Update(vo);	
		*/
		
		/*
		ReplyDTO dto = new ReplyDTO();
		dto.Delete("38");
		*/		
		
		ReplyDTO dto = new ReplyDTO();
		dto.GetList("3");
		int size = dto.GetListTotal();
		for(int i=0; i < size; i++)
		{
			ReplyVO vo = dto.GetItem(i);
			System.out.println(vo.getNote());
			System.out.println("**************************");
		}		
	}

}
