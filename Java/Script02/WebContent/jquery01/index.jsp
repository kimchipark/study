<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
		<script src="jquery-3.6.0.js"></script>
	</head>
	<style>	
	.mainMenu
	{
		position: absolute;
		background-color: yellow;		
	}
	</style>
	<script>
		window.onload = function()
		{
			$("#menuA").css("display","none");
			$("#menuB").css("display","none");
		}
		
		function ShowMenuA()
		{
			$("#menuA").css("display","");
			$("#menuB").css("display","none");			
		}
		
		function ShowMenuB()
		{
			$("#menuA").css("display","none");
			$("#menuB").css("display","");			
		}		
		</script>
	<body>
		<table border="1" width="200px">
			<tr>
				<td><a href="javascript:ShowMenuA();">메뉴1</a></td>
				<td><a href="javascript:ShowMenuB();">메뉴2</a></td>
			</tr>
		</table>
		
		<table id="menuA" class="mainMenu" border="1" width="200px">
			<tr>
				<td>서브메뉴 1-1</td>
			</tr>
			<tr>
				<td>서브메뉴 1-2</td>
			</tr>
		</table>		
		
		<table id="menuB"  class="mainMenu"  border="1" width="200px">
			<tr>
				<td>서브메뉴 2-1</td>
			</tr>
			<tr>
				<td>서브메뉴 2-2</td>
			</tr>
		</table>
		
		<table border="0" style="width:100%;">
			<tr>
				<td style="height:40px">
					<span style="font-weight:bold; color:red;">※ 자바학습 게시판</span>
				</td>
			</tr>
			<tr>
				<td style="height:25px; text-align:right;">
					<a href="write.html">글쓰기</a>
				</td>
			</tr>						
			<tr>
				<td>
					<table border="0" style="width:100%;">
						<tr>
							<td style="text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
							<td style="text-align:center; background-color:#f2f2f2;">제목</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성일</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성자</td>
							<td style="text-align:center; background-color:#f2f2f2;width: 70px;">조회수</td>						
						</tr>
						<tr>
							<td style="text-align:center;">1</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">2</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">3</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr>
							<td style="text-align:center;">4</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">5</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">6</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">7</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">8</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">9</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
						<tr class="itemlist">
							<td style="text-align:center;">10</td>
							<td><a href="view.html">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
							<td style="text-align:center;">2021.11.10</td>
							<td style="text-align:center;">홍길동</td>
							<td style="text-align:center;">10</td>
						</tr>
					</table>							
				</td>
			</tr>
			<tr>
				<td style="text-align:center;">
				◀ 1 2 3 4 5 6 7 8 9  ▶
				</td>
			</tr>												
		</table>	
	</body>
</html>