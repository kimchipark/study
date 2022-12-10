
public class SubHealth extends Health
{
	double	std_weight;	//표준체중
	double	fat;		//비만도
	String	result;		//결과값
	
	SubHealth()
	{
		this.std_weight = 0.0;
		this.fat = 0.0;
		this.result = null;
	}
	
	public void Calculate()
	{
		super.input();
		
		if( super.gender == 'M' || super.gender == 'm' )
		{
			this.std_weight = (super.tall - 100) * 0.9;
		}
		else
		{
			this.std_weight = (super.tall - 100) * 0.85;
		}
		
		this.fat = Double.parseDouble(String.format("%.2f", (super.weight / this.std_weight) * 100));
		
		if(this.fat <= 90)
		{
			this.result = "저체중";
		}
		else if(this.fat > 90 && this.fat <= 110)
		{
			this.result = "정상(표준체중)";
		}
		else if(this.fat > 110 && this.fat <= 120)
		{
			this.result = "과체중";
		}
		else if(this.fat > 120 && this.fat <= 130)
		{
			this.result = "경도비만";
		}
		else if(this.fat > 130 && this.fat <= 150)
		{
			this.result = "중도비만";
		}
		else if(this.fat > 150)
		{
			this.result = "고도비만";
		}
		
		this.output();
		
		System.out.println("당신은 비만도는" + this.fat + "이고, " +this.result + "입니다.");
		
		
		
	}
	
	public void output()
	{
		super.output();
	}
}
