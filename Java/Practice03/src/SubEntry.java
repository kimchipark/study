
public class SubEntry extends Entry
{
	String definition;
	int year;
	
	SubEntry(String word, String sentence, int year )
	{
		super(word);
		this.definition = sentence;
		this.year = year;
	}
	
	public void printView()
	{
		System.out.println("*****������*****");
		super.writeView();
		System.out.println("����:" + this.definition);
		System.out.println("�ñ�:" + this.year);
	}
}
