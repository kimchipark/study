public class MyDate 
{
	private int year;   //년
	private int month;  //월
	private int day;    //일
	
	public MyDate()
	{
		year  = 2022;
		month = 8;
		day   = 1;
	}
	
	public int GetValue(DayType mode) 
	{
		/*
		if(mode == DayType.YEAR) return year;
		else if(mode == DayType.MONTH) return month;
		else return day;
		*/
		switch(mode)
		{
		case YEAR  : return year;
		case MONTH : return month;
		case DAY   : return day;
		}
		return year;
	}
	
	public void PrintInfo() 
	{
		System.out.println(year + "년" + month + "월" + day + "일");
	}
}
