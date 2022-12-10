import java.util.Scanner;
public class Health 
{
	char	gender;	//성별
	double	tall;	//키
	double	weight;	//체중
	Scanner myinput;
	
	Health()
	{
		this.myinput = new Scanner(System.in);
	}
	
	public void input()
	{
		System.out.print("성별:");
		this.gender = this.myinput.next().charAt(0);
		System.out.print("신장:");
		this.tall = this.myinput.nextDouble();
		System.out.print("체중:");
		this.weight = this.myinput.nextDouble();
	}
	
	public void output()
	{
		if(this.gender == 'm' || this.gender == 'M')
		{
			System.out.println("성별 - 남자");
		}
		else if(this.gender == 'w' || this.gender == 'W')
		{
			System.out.println("성별 - 여자");
		}

		System.out.println("신장 - "+ this.tall );
		System.out.println("체중 - "+ this.weight );
	}
}
