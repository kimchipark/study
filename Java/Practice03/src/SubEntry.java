
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
		System.out.println("*****약어사전*****");
		super.writeView();
		System.out.println("원어:" + this.definition);
		System.out.println("시기:" + this.year);
	}
}
