package ezen;

public class Cal 
{
	private int	x;
	private int y;
	private String op;
	
	public Cal(int x, int y)
	{
		this.x = x;
		this.y = y;
	}
	
	public void setX(int x) {
		this.x = x;
	}

	public void setY(int y) {
		this.y = y;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}

	public String getOp() {
		return op;
	}

	public int Calculator(String op)
	{
		int result = 0;
		
		switch(op)
		{
		case "+": result = this.x + this.y; break;
		case "*": result = this.x * this.y; break;
		case "-": result = this.x - this.y; break;
		case "/": result = this.x / this.y; break;
		}
		return result;
	}
	
	
}