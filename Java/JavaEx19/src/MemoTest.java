import java.util.ArrayList;

public class MemoTest
{
	public static void main(String[] args) 
	{
		ArrayList<MemoVO> ary = new ArrayList<MemoVO>();
		
		for(int i=0; i < 10; i++)
		{
			MemoVO m = new MemoVO();
			String title = i + "��° �����Դϴ�.";
			m.setTitle(title);			
			ary.add(m);
		}
		System.out.println("������ ����:" + ary.size());
		
		ary.remove(3);
		System.out.println("������ ����:" + ary.size());
		
		MemoVO m = new MemoVO();
		String title = "�߰���  �����Դϴ�.";
		m.setTitle(title);	
		ary.add(0,m);
		
		/*
		for(MemoVO x : ary)
		{
			System.out.println(x.getTitle());
		}
		*/
		for(int i=0 ; i < ary.size(); i++)
		{
			MemoVO x = ary.get(i);
			System.out.println(x.getTitle());
		}
	}
}


