
public class Car 
{
	//===== 필드 선언부
	String color;  //색상
	int    speed;  //속도
	Tire   rearL;  //앞바퀴 왼쪽
	Tire   rearR;  //앞바퀴 오른쪽
	
	//===== 생성자 선언부
	public Car()
	{
		color  = "red";
		speed  = 0;
		rearL  = new Tire();
		rearR  = new Tire();
		System.out.println("Car 클래스 생성자.");
	}
}
