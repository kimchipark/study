//https://kin.naver.com/qna/detail.naver?d1id=1&dirId=1040201&docId=180636476&qb=amF2YeyXsOyKteusuOygnA==&enc=utf8§ion=kin.ext&rank=3&search_sort=0&spq=0
import java.util.Scanner;

public class Example09
{
	Scanner scan = new Scanner(System.in);
	
	public void work1()//구구단 단수 하나 입력받아서 출력하고 곱한 값이 9의 배수이면 출력하지 않는 프로그램
	{
		int num = 0;
		
		while(true)
		{
			System.out.print("정수 하나 입력:");
			num = scan.nextInt();
		
			if(num > 0 )
			{
				for(int i = 1; i <= 9 ; i++)
				{
					if( (num * i) % 9 != 0)
						System.out.println(num + "x" + i + "=" + (num*i));
				}
				break;
			}
			else
			{
				System.out.println("양수가 아닙니다. 다시 입력하세요.");
			}
		}
	}
	
	public void work2()//무한루프+스위치 테스트
	{
		int choice;
		
		System.out.println("***초기 메뉴***");
		System.out.println("1.입력");
		System.out.println("2.수정");
		System.out.println("3.조회");
		System.out.println("4.삭제");
		System.out.println("7.종료");
		while(true)
		{
			System.out.print("메뉴번호 입력:");
			choice = scan.nextInt();
			System.out.print("=> 처리내용: ");
			
			switch(choice)
			{
			case 1:
				System.out.println("입력메뉴가 선택되었습니다.");
				break;
			case 2:
				System.out.println("수정메뉴가 선택되었습니다.");
				break;
			case 3:
				System.out.println("조회메뉴가 선택되었습니다.");
				break;
			case 4:
				System.out.println("삭제메뉴가 선택되었습니다.");
				break;
			case 7:
				System.out.println("프로그램이 종료됩니다.");
				return;
			default:
				System.out.println("번호가 잘못 입력되었습니다. 다시 입력하세요");
				break;
			}
		}		
	}
	
	public void work3() //정수 두개를 입력하여 더 작은수부터 큰수까지 합 구하는 프로그램.
	{
		int n1 = 0;
		int n2 = 0;
		int sum = 0;
		
		System.out.print("첫번째 수:");
		n1 = scan.nextInt();
		System.out.print("두번째 수:");
		n2 = scan.nextInt();
		
		
		if( n1 < n2)
		{
			for(int i = n1; i<=n2; i++)
			{
				sum += i;
			}
			System.out.println(n1 + "부터" + n2 + "까지 정수들의 합:" + sum);
		}
		else if( n1 > n2)
		{
			for(int i = n2; i<=n1; i++)
			{
				sum += i;
			}
			System.out.println(n2 + "부터" + n1 + "까지 정수들의 합:" + sum);
		}
		else
		{
			System.out.println(n1 + "과 " + n2 + "의 값이 같습니다.");
		}
	}
	
	public void work4() // 정수 하나를 입력받아서 별찍는 프로그램.
	{
		int end = 0;
		
		System.out.print("정수를 입력하세요 :");
		end = scan.nextInt();
		
		if(end > 0)
		{
			for( int i = 0 ; i < end ; i++)
			{
				for(int j = 0; j < i; j++ )
				{
					System.out.print("*");
				}
				System.out.println(i+1);
			}
		}
		else
			System.out.println("양수가 아닙니다.");
		
		
	}

	public void work5() // 정수를 입력받아 양수면 정피라미드 음수면 역피라미드 출력
	{
		int num = 0;
		
		System.out.print("정수 입력 :");
		num = scan.nextInt();
		
		if(num > 0 )
		{
			for(int i = 0 ; i < num ; i++)
			{
				for(int j = 0; j <= i ; j++)
				{
					System.out.print("*");
				}
				System.out.println();
			}
		}
		else if(num < 0)
		{
			num = num * -1;
			for(int  i = 0 ; i < num; i++)
			{
				for(int j = 0; j < i; j++)
				{
					System.out.print(" ");
				}
				
				for(int k = i ; k < num ; k++)
				{
					System.out.print("*");
				}
				
				System.out.println();
			}
		}
	}

	public void selectMenu() // 가격계산 배열이용;
	{
		String[] food = {"불고기버거", "치킨버거", "감자튀김", "치즈스틱", "샐러드", "콜라", "에이드", "커피"};
		int[] price = { 3500, 3200, 1000, 400, 2000, 700, 1200, 1000};
		int[] count = { 0, 0, 0, 0, 0, 0, 0, 0 };
		int choice;
		int input;
		int result = 0;
		char insert;
		while(true)
		{
			System.out.println("*** 메뉴를 선택하세요 ***");
			System.out.println("*** 햄버거 ***");
			System.out.println("1.불고기 버거 3500원");
			System.out.println("2.치킨버거 3200원");
			System.out.println("*** 추가 ***");
			System.out.println("3.감자튀김 1000원");
			System.out.println("4.치즈스틱 400원");
			System.out.println("5.샐러드 2000원");
			System.out.println("*** 음료수 ***");
			System.out.println("6.콜라 700원");
			System.out.println("7.에이드 1200원");
			System.out.println("8.커피 1000원");
			System.out.println("********************");
			
			System.out.print("메뉴선택:");
			choice = scan.nextInt();
			
			switch(choice)
			{
			case 1:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 2:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 3:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 4:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 5:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 6:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 7:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			case 8:
				System.out.println(food[choice-1]+"를 선택하셨습니다.");
				System.out.print("수량 :");
				input = scan.nextInt();
				System.out.println(input + "개 주문 하셨습니다");
				count[choice-1] += input;
				result = price[choice-1] * input + result;
				break;
			}
			
			System.out.print("추가 주문 하시겠습니까? (y/n) :");
			insert = scan.next().charAt(0);
			
			if(insert == 'y')
				continue;
			else
			{
				System.out.println("*주문하신 정보는 다음과 같습니다.*");
				System.out.println("-----------------------");
				for(int i = 0 ; i < count.length; i++)
				{
					if(count[i] != 0)
					{
						System.out.println(food[i] + ":" + count[i] + "개 -" + (price[i]*count[i]) + "원");
					}
				}
				System.out.println("----------------------");
				System.out.println("총 가격 :" + result);
				break;
			}
				
		}
		
		
	}
	
	public void work6() //문자열을 입력받고 그문자속에 원하는 알파벳이 몇개있는지 확인시켜주는 프로그램.
	{
		String str;
		char input;
		int count = 0;
		boolean alpa = false;
		
		System.out.print("문자열 입력 : ");
		str = scan.nextLine();
		
		for(int i = 0; i < str.length() ; i++)
		{
			if((str.charAt(i) >= 65 && str.charAt(i) <= 90) ||
					(str.charAt(i) >= 97 && str.charAt(i) <=122))
			{
				alpa = true;
			}
			else
			{
				System.out.println("영문자만 입력해주세요");
				break;
			}
		}
		
		if(alpa)
		{
			System.out.print("문자 입력 : ");
			input = scan.next().charAt(0);
			
			for( int i = 0 ; i < str.length() ; i++)
			{
				if(str.charAt(i) == input)
					count++;
			}
			
			System.out.println("포함된 개수:" + count);
		}
	}
	public static void main(String[] args) 
	{
		Example09 ex = new Example09();
		
//		ex.work1();
//		ex.work2();
//		ex.work3();
//		ex.work4();
//		ex.work5();
		ex.work6();
//		ex.selectMenu();
		
		
	}

}
