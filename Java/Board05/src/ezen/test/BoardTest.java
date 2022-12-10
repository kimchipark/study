package ezen.test;

import ezen.vo.*;
import ezen.dto.*;

public class BoardTest 
{
	public static void main(String[] args) 
	{
		/*
		BoardVO vo = new BoardVO();
		vo.setUserno("1");
		vo.setTitle("제목입니다.");
		vo.setKind("J");
		vo.setNote("내용입니다.");
		//vo.setFname("test.hwp");
		//vo.setPname("aaaa.hwp");
				
		BoardDTO dto = new BoardDTO();
		for(int i=1; i <= 250; i++)
		{
			String title = String.format("[%03d]번째 제목입니다.",i);
			vo.setTitle(title);
			dto.Insert(vo);
		}
		*/
		
		/*
		BoardVO vo = null;
		BoardDTO dto = new BoardDTO();
		vo = dto.Read("100", false);
		vo.PrintInfo();
		*/
		
		/*
		BoardDTO dto = new BoardDTO();
		dto.Delete("100");
		*/
		
		BoardVO vo = null;
		BoardDTO dto = new BoardDTO();
		vo = dto.Read("200", false);
		vo.PrintInfo();	
		vo.setTitle("변경된 제목입니다.");
		vo.setKind("H");
		dto.Update(vo);		
	}
}
