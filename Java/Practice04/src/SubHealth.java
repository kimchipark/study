
public class SubHealth extends Health
{
	double	std_weight;	//ǥ��ü��
	double	fat;		//�񸸵�
	String	result;		//�����
	
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
			this.result = "��ü��";
		}
		else if(this.fat > 90 && this.fat <= 110)
		{
			this.result = "����(ǥ��ü��)";
		}
		else if(this.fat > 110 && this.fat <= 120)
		{
			this.result = "��ü��";
		}
		else if(this.fat > 120 && this.fat <= 130)
		{
			this.result = "�浵��";
		}
		else if(this.fat > 130 && this.fat <= 150)
		{
			this.result = "�ߵ���";
		}
		else if(this.fat > 150)
		{
			this.result = "����";
		}
		
		this.output();
		
		System.out.println("����� �񸸵���" + this.fat + "�̰�, " +this.result + "�Դϴ�.");
		
		
		
	}
	
	public void output()
	{
		super.output();
	}
}
