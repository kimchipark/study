public class Example01 
{
	public static void main(String[] args) 
	{
		Gender gender = Gender.WOMAN;
		if( gender == Gender.WOMAN)
		{
			System.out.println("����");
		}else
		{
			System.out.println("����");
		}
		
		City c = City.JEONJU;
		
		MyDate d = new MyDate();
		d.PrintInfo();
		System.out.println(d.GetValue(DayType.YEAR));
		System.out.println(d.GetValue(DayType.MONTH));
		System.out.println(d.GetValue(DayType.DAY));
	}
}
