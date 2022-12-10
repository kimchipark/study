public class Example01 
{
	public static void main(String[] args) 
	{
		Gender gender = Gender.WOMAN;
		if( gender == Gender.WOMAN)
		{
			System.out.println("여자");
		}else
		{
			System.out.println("남자");
		}
		
		City c = City.JEONJU;
		
		MyDate d = new MyDate();
		d.PrintInfo();
		System.out.println(d.GetValue(DayType.YEAR));
		System.out.println(d.GetValue(DayType.MONTH));
		System.out.println(d.GetValue(DayType.DAY));
	}
}
