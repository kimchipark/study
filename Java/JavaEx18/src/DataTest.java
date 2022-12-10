
public class DataTest 
{
	public static void main(String[] args) 
	{
		MyData<Integer> d1 = new MyData<Integer>();		
		d1.setValue(100);
		int v = d1.getValue();
		System.out.println(v);
		
		MyData<String> d2 = new MyData<String>();		
		d2.setValue("abcdef");
		String s = d2.getValue();
		System.out.println(s);
		
		MemoVO m = new MemoVO();
		m.setNo(1);
		m.setTitle("this is title");
		m.setNote("this is note");
		
		MyData<MemoVO> d3 = new MyData<MemoVO>();
		d3.setValue(m);
		MemoVO vo = d3.getValue();
		System.out.println(vo.getTitle());
		System.out.println(vo.getNote());
		
	}
}


