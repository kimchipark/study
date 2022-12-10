package ezen.test;

import ezen.vo.*;
import ezen.dto.*;

public class ListTest 
{
	public static void main(String[] args) 
	{
		ListDTO dto = new ListDTO();
		dto.SetSearch("H","A","241");
		
		int total = dto.GetTotal();
		System.out.println("ÀüÃ¼ °¹¼ö :" + total);		
		
		dto.GetList(1);
		int size = dto.GetListTotal();
		for(int i=0; i < size; i++)
		{
			BoardVO vo = dto.GetItem(i);
			vo.PrintInfo();
			System.out.println("**************************");
		}	
	}
}
