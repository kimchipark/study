public class Circle 
{
	static double PI = 3.14;  //������
	double radious;           //������
	
	//���� ���̸� ���Ѵ�. (�ν��Ͻ� �޽�� ����)
	//���� ���� = ������ * ������ * ������
	double GetArea()
	{
		return PI * radious * radious;
	}
	
	//���� ���̸� ���Ѵ�. (���� �޽�� ����)
	//���� ���� = ������ * ������ * ������
	static double GetArea(double r)
	{
		return PI * r * r;
	}
}
