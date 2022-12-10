
public class Example10 
{
	public void bubble(int n[])
	{
		int arr[] = n;
		int temp;
		for(int i = 0 ; i < arr.length; i++)
		{
			for(int j = 0 ; j <arr.length -i - 1 ; j++)
			{
				if(arr[j] > arr[j+1])
				{
					temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
		}
	}

	public static void main(String[] args) 
	{
		Example10 ex = new Example10();
		int n[] = new int[10];
		int num = 0;
		int temp = 0;
		for(int i = 0 ; i < n.length; i++)
		{
			n[i] = (int)(Math.random() * 100) + 1 ;
			System.out.print(n[i] + " ");
			if(num <= n[i])
			{
				num = n[i];
			}
		}
		System.out.println();
		
		ex.bubble(n);
		
		for(int i = 0; i < n.length ; i++)
		{
			System.out.print(n[i] + " ");
		}
		
		System.out.println();
		System.out.println("�ִ밪 : " + num);
		
		
	}

}
