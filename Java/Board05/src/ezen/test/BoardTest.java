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
		vo.setTitle("�����Դϴ�.");
		vo.setKind("J");
		vo.setNote("�����Դϴ�.");
		//vo.setFname("test.hwp");
		//vo.setPname("aaaa.hwp");
				
		BoardDTO dto = new BoardDTO();
		for(int i=1; i <= 250; i++)
		{
			String title = String.format("[%03d]��° �����Դϴ�.",i);
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
		vo.setTitle("����� �����Դϴ�.");
		vo.setKind("H");
		dto.Update(vo);		
	}
}
