public class Test 
{
	public static void main(String[] args) 
	{

		Student hong = new Student();
		hong.setName("ȫ�浿");
		hong.setAge(20);
		hong.setGrade(3);
		hong.setSchool("��������б�");
		hong.PrintInfo();
		
		/*
		Person chun = new Person();
		chun.setName("������");
		chun.setAge(16);
		chun.PrintInfo();
		*/
			
		/*
		 * �̸�            ����
		 * ȫ�浿           20
		 * �ڱ浿           23
		 * ������           16
		 * �ڹ���           40
		 */
		Person []List = new Person[4];
				
		List[0] = new Person("ȫ�浿",20);
		List[1] = new Person("�ڱ浿",23);
		List[2] = new Person("������",16);
		List[3] = new Person("�ڹ���",40);
		int sum = 0;
		for(Person p : List)
		{
			sum += p.getAge();
		}
		System.out.println("�հ�:" + sum);
		System.out.println("���:" + (sum/List.length));
		
	}
}
