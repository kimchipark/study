package ezen.game;

import java.util.Scanner;

public class Bingo 
{
	private int life;   //게임횟수
	private int answer; //게임정답
	private Scanner scn;

	//게임을 시작한다.
	private void Start(int life)
	{
		//100이하의 정수만 얻는다.
		this.answer = (int)(Math.random()*100) + 1;
		
		//게임횟수를 세팅한다.
		this.life = life;
		
		//키보드 입력 장치 준비
		this.scn = new Scanner(System.in);
	}
	
	//게임을 플레이한다.
	private void Run()
	{
		boolean IsHit =	false;    //게임이 끝났는지 안끝났는지 체크  
		int keyin;
		for(int i = 0; i < this.life ; i++)
		{
			System.out.println("남은 기회"+(this.life - i));
			System.out.print("값 입력:");
			
			try
			{
				keyin = this.scn.nextInt();
			}
			catch(Exception e)
			{
				this.scn.nextLine();
				System.out.println("Input Error!!");
				i--;
				continue;
			}
			
			if(keyin < this.answer)
			{
				System.out.println("UP!!");
			}
			else if(keyin > this.answer)
			{
				System.out.println("DOWN!!");
			}
			else
			{
				System.out.println("BinGo!!");
				IsHit = true;
				break;
			}
		}
		if(IsHit == false)
		{
			System.out.println("정답은 ["+this.answer+"]입니다.");
		}
	}	
	
	//게임을 종료하고 계속 할지 물어본다.
	private boolean End()
	{
		boolean IsEnd = false;
		String input;
		
		System.out.println("게임을 새로 시작 하시겠습니까? (Y/N)");
		this.scn.nextLine();
		input = this.scn.nextLine();
		
		if(input.equals("Y") || input.equals("y"))
		{
			IsEnd = true;
		}
		
		return IsEnd;
	}
	
	//게임 플레이
	public void Play(int life)
	{
		do
		{
			this.Start(life);
			this.Run();
		}
		while(this.End());
	}
	
}
