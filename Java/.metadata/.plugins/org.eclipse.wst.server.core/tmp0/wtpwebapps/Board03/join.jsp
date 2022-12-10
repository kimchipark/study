<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>
window.onload = function()
{
	document.join.id.focus();
}

function CheckSubmit()
{
	if(document.join.id.value == "")
	{
		alert("아이디를 입력하세요.");
		document.join.id.focus();
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
	
	let pw = document.join.pw.value;
	let pwcheck = document.join.pwcheck.value;
	
	if(pw != pwcheck)
	{
		alert("비밀번호가 일치하지 않습니다.");
		document.join.pwcheck.value = "";
		document.join.pwcheck.focus();
		return false;
	}
	
	if( confirm("정말 회원가입 하시겠습니까?") != 1)
	{
		return false;
	}
	return true;
}
</script>
<form name="join" method="post" action="joinok.jsp" onsubmit="return CheckSubmit();">
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
			<td><input type="text"  name="id" placeholder="" style="width:95%"></td>
		</tr>
		<tr>
			<td>비밀번호 (*)</td>
			<td><input type="password"  name="pw"  style="width:95%"></td>
		</tr>
		<tr>
			<td>비밀번호 확인 (*)</td>
			<td><input type="password"  name="pwcheck" style="width:95%"></td>
		</tr>			
		<tr>
			<td>이름 (*)</td>
			<td><input type="text"  name="name"  style="width:95%"></td>
		</tr>		
		<tr>
			<td>성별 (*)</td>
			<td>
				<input type="radio" name="gender" value="M" checked>남자
				<input type="radio" name="gender" value="F">여자
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
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>