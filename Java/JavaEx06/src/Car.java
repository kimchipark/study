
public class Car 
{
	//===== �ʵ� �����
	String color;  //����
	int    speed;  //�ӵ�
	Tire   rearL;  //�չ��� ����
	Tire   rearR;  //�չ��� ������
	
	//===== ������ �����
	public Car()
	{
		color  = "red";
		speed  = 0;
		rearL  = new Tire();
		rearR  = new Tire();
		System.out.println("Car Ŭ���� ������.");
	}
}
