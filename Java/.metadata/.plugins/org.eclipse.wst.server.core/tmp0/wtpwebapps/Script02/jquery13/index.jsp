<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>jquery 연습</title>
		<script src="jquery-3.6.0.js"></script>
	</head>	
	<body>
	<script type="text/javascript">
		
		var checkID = false;
		//00:아이디 검사 안함
		//01:아이디가 중복됨
		//02:회원 가입 가능한 아이디
		var CheckState ="00";
		window.onload = function()
		{
			
			//키보드 이벤트 종류 : keypress, keyup, keydown
			$("#id").keyup(
				function()
				{
					var UserID = $("#id").val();
					//$("#spanMsg").html($("#id").val());
					$.ajax({
						type: "get",
						url: "idcheck.jsp?id=" + UserID,
						dataType: "xml",
						success : function(data)
						{
							//xml을 이용한 아이디 중복검사
							CheckState = $(data).find("code").text();
							$("#spanMsg").html($(data).find("msg").text());
						
							// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
							//data = data.trim();   //html로 넘어온 값의 공백을 업애줌
							//alert("[" + data + "]"); // 공백 확인용
							//ary = data.split(":"); //콜론 단위로 문자열을 잘라줌
							//code = ary[0];       
							//msg = ary[1];
							//CheckState = code;
							//$("#spanMsg").html(msg);
						},
						error : function(xhr, status, error)
						{
							// 통신 오류 발생시
							$("#spanMsg").html("검사 오류입니다.");
						}
					});
				}
			);
		}
		function CheckSubmit()
		{
			var userID = $("#id").val();
			if( userID == "")
			{
				alert("아이디를 입력하세요.");
				return false;
			}
			if( CheckState == "00")
			{
				//00:아이디 검사 안함
				alert("아이디 중복 검사가 수행되지 않았습니다.");
				return false;
			}
			if( CheckState == "01")
			{
				//01:아이디가 중복됨
				alert("중복 된 아이디 입니다.");
				return false;
			}
			return true;
		}
	</script>
	<form name="join" method="post" action="joinok.jsp" onsubmit="return CheckSubmit();">
		<table border="0" style="width:700px; " align="center">
			<tr>
				<td style="height:40px">
					<span style="font-weight:bold; color:red;">※ 회원가입</span>
				</td>
			</tr>																		
		</table>
		<table border="1" style="width:700px; " align="center">
			<tr>
				<td style="width:130px;">아이디 (*)</td>
				<td><input type="text" id="id" name="id" size="20">
				<span id="spanMsg" name="spanMsg" style="width:200px">아이디를 입력하세요.</span>
				</td>
			</tr>
			<tr>
				<td>비밀번호 (*)</td>
				<td><input type="password" name="pw"  style="width:95%"></td>
			</tr>
			<tr>
				<td>비밀번호 확인 (*)</td>
				<td><input type="password" name="pwcheck" style="width:95%"></td>
			</tr>			
			<tr>
				<td>이름 (*)</td>
				<td><input type="text" name="name"  style="width:95%"></td>
			</tr>		
			<tr>
				<td>성별 (*)</td>
				<td>
					<input type="radio" value="M" name="gender" checked>남자
					<input type="radio" value="F" name="gender">여자
				</td>
			</tr>		
			<tr>
				<td>취미 (*)</td>
				<td>
					<select name="hobby" >
						<option value="001" selected>낚시</option>
						<option value="002">여행</option>
						<option value="003">게임</option>
					</select>
				</td>
			</tr>		
			<tr>
				<td>관심분야</td>
				<td>
					<input type="checkbox" value="001:책" name="interest"  checked>책
					<input type="checkbox" value="002:영화" name="interest">영화
					<input type="checkbox" value="003:유튜브" name="interest">유튜브
					<input type="checkbox" value="004:낚시" name="interest">낚시					
				</td>
			</tr>		
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" value="가입완료">
					<input type="button" value="취소">
				</td>							
			</tr>																															
		</table>
	</form>
	</body>
</html>