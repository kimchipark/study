public class Circle 
{
	static double PI = 3.14;  //원주율
	double radious;           //반지름
	
	//원의 넓이를 구한다. (인스턴스 메쏘드 지원)
	//원의 넓이 = 원주율 * 반지름 * 반지름
	double GetArea()
	{
		return PI * radious * radious;
	}
	
	//원의 넓이를 구한다. (정적 메쏘드 지원)
	//원의 넓이 = 원주율 * 반지름 * 반지름
	static double GetArea(double r)
	{
		return PI * r * r;
	}
}
