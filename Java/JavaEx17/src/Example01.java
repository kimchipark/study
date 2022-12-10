public class Example01 
{
	public static void main(String[] args) 
	{
		//5명의 학생 점수가 다음과 같이 입력 되었다.
		//학생들의 평균을 구하시오.
		String score = "1,188 / 2,290 / 5,556 / 33,100 / 1,124";
		String data[] = score.split("/");
		int sum = 0;		
		/*
		for(int i=0; i < data.length; i++)
		{
			//data[0] = "1,188 ";
			data[i] = data[i].replace(",","");
			sum = sum + Integer.parseInt(data[i]);
			System.out.println("점수:" + data[i]);
		}
		*/
		for(String item : data)
		{
			//item = item.replace(" ","");
			item = item.trim();
			item = item.replace(",","");
			sum = sum + Integer.parseInt(item);
			System.out.println("점수:" + item);			
		}		
		System.out.println("평균:" + (sum/data.length) );
	}
}
