public class Test 
{
	public static void main(String[] args) 
	{

		Student hong = new Student();
		hong.setName("홍길동");
		hong.setAge(20);
		hong.setGrade(3);
		hong.setSchool("이젠고등학교");
		hong.PrintInfo();
		
		/*
		Person chun = new Person();
		chun.setName("성춘향");
		chun.setAge(16);
		chun.PrintInfo();
		*/
			
		/*
		 * 이름            나이
		 * 홍길동           20
		 * 박길동           23
		 * 성춘향           16
		 * 박문수           40
		 */
		Person []List = new Person[4];
				
		List[0] = new Person("홍길동",20);
		List[1] = new Person("박길동",23);
		List[2] = new Person("성춘향",16);
		List[3] = new Person("박문수",40);
		int sum = 0;
		for(Person p : List)
		{
			sum += p.getAge();
		}
		System.out.println("합계:" + sum);
		System.out.println("평균:" + (sum/List.length));
		
	}
}
