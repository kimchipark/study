//https://fors.tistory.com/132
public class Example08 
{

	public static void main(String[] args) 
	{
		int num = 0;
		
		int[][] arr = new int[5][5];
		
		for(int i = 0; i < arr.length ; i++)
		{
			if( i%2 == 0)
			{
				for(int j = 0; j < arr[i].length ; j++)
				{
					num++;
					arr[i][j] = num;
				}
			}
			else
			{
				for(int j =  arr[i].length - 1; j >= 0 ; j--)
				{
					num++;
					arr[i][j] = num;
				}
			}
		}
		
		for(int i = 0; i < arr.length ; i++)
		{
			System.out.print("{");
			
			for(int j = 0; j < arr[i].length ; j++)
			{
				if(j == arr[i].length-1)
				{
					System.out.print(arr[i][j] + "}");
				}
				else
				{
					System.out.print(arr[i][j] + ",");
				}				
			}
			
			System.out.println();
		}
	}

}
