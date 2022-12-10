<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>
	//아이디 사용여부
	var IsUseID = false; 
	
	window.onload = function()
	{
		document.join.id.focus();
	}
	//아이디에 키보드 입력시 IsUseID를 false로 설정
	function ResetID()
	{
		IsUseID = false;
		spanMsg.innerHTML = "아이디 중복검사를 수행하세요.";
	}
	
	//아이디 중복검사 수행
	function CheckID()
	{
		var userid = document.join.id.value;
		if(userid == "")
		{
			alert("아이디를 입력하세요.");
			document.join.id.focus();
			return;
		}
		//팝업창을 표시하고 팝업창에서 아이디 중복 검사를 수행한다.
		window.open("idcheck.jsp?id=" + userid,"_idcheck",
		"width=400,height=400");		
	}
	
	//회원가입수행
	function DoSubmit()
	{
		if(document.join.id.value == "")
		{
			alert("아이디를 입력하세요.");
			document.join.id.focus();
			return false;
		}
		if(IsUseID == false)
		{
			alert("아이디 중복검사를 수행하세요.");
			return false;	
		}
		if(document.join.pw.value == "")
		{
			alert("비밀번호를 입력하세요.");
			document.join.pw.focus();
			return false;
		}
		if(document.join.name.value == "")
		{
			alert("이름을 입력하세요.");
			document.join.name.focus();
			return false;
		}	
		
		pw = document.join.pw.value;
		pwcheck = document.join.pwcheck.value;
		if( pw != pwcheck )
		{
			alert("비밀번호가 일치하지 않습니다.");
			document.join.pwcheck.value = "";
			document.join.pwcheck.focus();
			return false;
		}
		if( confirm("회원가입을 진행하시겠습니까?") != 1)
		{
			return false;	
		}
		return true;	
	}	
</script>
<form name="join" method="post" action="joinok.jsp"
	onsubmit="return DoSubmit();">
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:40px">
				<span style="font-weight:bold; color:red;">※ 회원가입</span>
			</td>
		</tr>																		
	</table>
	<table border="1" style="width:100%;">
		<tr>
			<td style="width:130px;">아이디 (*)</td>
			<td><input type="text" name="id" size="20" onkeypress="ResetID();">
			<input type="button" value="아이디 중복체크" onclick="CheckID();">
			<span id="spanMsg" name="spanMsg">아이디 중복검사를 수행하세요.</span>
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
		<tr>
			<td colspan="2" align="center">
				<a href="findpw.jsp">비밀번호 찾기</a>
			</td>
		</tr>																														
	</table>
</form>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>
