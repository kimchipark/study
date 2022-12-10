package ezen;

public class Calculater 
{
	public int Docal(int x, int y, String op)
	{
		int result = 0;
		switch(op)
		{
		case "+": result = x + y; break;
		case "-": result = x - y; break;
		case "*": result = x * y; break;
		case "/": result = x / y; break;
		}
		return result;
	}
	public int Docal(String x, String y, String op)
	{
		return Docal(Integer.parseInt(x), Integer.parseInt(y), op );
	}
}
