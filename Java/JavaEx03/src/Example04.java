public class Example04 
{
	public static void main(String[] args) 
	{
		int math_score [] = { 11, 22, 33 };
		int eng_score  [] = { 44, 55, 66 };
		int kor_score  [] = { 77, 88, 99 };
		
		int score[][] =
		{
			{ 11, 22, 33 },  //��������
			{ 44, 55, 66 },  //��������
			{ 77, 88, 99 }   //��������
		};
		int row_total = score.length;
		System.out.println("���� ����:" + row_total);
		for(int row = 0; row < row_total; row++)
		{
			for(int i=0; i < score[row].length; i++)
			{
				System.out.print("[" + score[row][i] + "]");
			}			
			System.out.println("");
		}
	}

}
