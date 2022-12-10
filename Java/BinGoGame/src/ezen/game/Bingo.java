package ezen.game;

import java.util.Scanner;

public class Bingo 
{
	private int life;   //����Ƚ��
	private int answer; //��������
	private Scanner scn;

	//������ �����Ѵ�.
	private void Start(int life)
	{
		//100������ ������ ��´�.
		this.answer = (int)(Math.random()*100) + 1;
		
		//����Ƚ���� �����Ѵ�.
		this.life = life;
		
		//Ű���� �Է� ��ġ �غ�
		this.scn = new Scanner(System.in);
	}
	
	//������ �÷����Ѵ�.
	private void Run()
	{
		boolean IsHit =	false;    //������ �������� �ȳ������� üũ  
		int keyin;
		for(int i = 0; i < this.life ; i++)
		{
			System.out.println("���� ��ȸ"+(this.life - i));
			System.out.print("�� �Է�:");
			
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
			System.out.println("������ ["+this.answer+"]�Դϴ�.");
		}
	}	
	
	//������ �����ϰ� ��� ���� �����.
	private boolean End()
	{
		boolean IsEnd = false;
		String input;
		
		System.out.println("������ ���� ���� �Ͻðڽ��ϱ�? (Y/N)");
		this.scn.nextLine();
		input = this.scn.nextLine();
		
		if(input.equals("Y") || input.equals("y"))
		{
			IsEnd = true;
		}
		
		return IsEnd;
	}
	
	//���� �÷���
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
