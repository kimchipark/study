package ezen;

import java.util.ArrayList;

public class DBTest 
{

	public static void main(String[] args)
	{
		MemoVO vo = new MemoVO();
		vo.setTitle("이것은 제목입니다.");
		vo.setNote("이것은 내용입니다.");
		
		MemoDTO dto = new MemoDTO();
		
		if( dto.DBOpen() == false)
		{
			return;
		}
		
		int runmode = 5;  //0:insert, 1:delete, 2:update 3:select 5:arraylist 목록저장하고 출력하기
		
		if(runmode == 0)
		{
			for(int i = 1 ; i <= 10; i++)
			{
				String title = i + "번째' 제목입니다.";
				vo.setTitle(title);
				dto.Insert(vo);
			}
		}
		
		if(runmode == 1)
		{
			dto.Delete(vo);
		}
		
		if(runmode == 2)
		{
			vo.setNo(6);
			vo.setTitle("안녕하세요");
			vo.setNote("안녕히계세요");
			dto.Update(vo);
		}
		if(runmode == 3)
		{
			vo.setNo(48);
			dto.Select(vo);
			vo.PrintInfo();
		}
		if(runmode == 4)
		{
			MemoVO m = dto.Read(43);
			m.PrintInfo();
		}
		if(runmode == 5)
		{
			ArrayList<MemoVO> list;
			list = dto.List();
			
			for(MemoVO x : list)
			{
				x.PrintInfo();
			}
		}
		dto.DBClose();
		System.out.println("done..");
	}

}
