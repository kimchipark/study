
public class Example08 
{
	public static void main(String[] args) 
	{
		String score = "11,22,33,44,55";
		String []ary = null;
		
		ary = score.split(",");
		int sum = 0;
		for(int i=0 ; i < ary.length; i++)
		{
			System.out.println(ary[i]);
			sum += Integer.parseInt(ary[i]);
		}
		System.out.println("гу╟Х:"+sum);
	}

}
