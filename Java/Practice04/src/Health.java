import java.util.Scanner;
public class Health 
{
	char	gender;	//����
	double	tall;	//Ű
	double	weight;	//ü��
	Scanner myinput;
	
	Health()
	{
		this.myinput = new Scanner(System.in);
	}
	
	public void input()
	{
		System.out.print("����:");
		this.gender = this.myinput.next().charAt(0);
		System.out.print("����:");
		this.tall = this.myinput.nextDouble();
		System.out.print("ü��:");
		this.weight = this.myinput.nextDouble();
	}
	
	public void output()
	{
		if(this.gender == 'm' || this.gender == 'M')
		{
			System.out.println("���� - ����");
		}
		else if(this.gender == 'w' || this.gender == 'W')
		{
			System.out.println("���� - ����");
		}

		System.out.println("���� - "+ this.tall );
		System.out.println("ü�� - "+ this.weight );
	}
}
