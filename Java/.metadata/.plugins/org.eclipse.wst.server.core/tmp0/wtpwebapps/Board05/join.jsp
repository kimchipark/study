<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>
	//00:아이디 검사 안함
	//01:아이디가 중복됨
	//02:회원 가입 가능한 아이디
	var CheckState = "00";
	
	window.onload = function()
	{
		$("#id").focus();
		
		$("#id").keyup(function(){
			var userID = $("#id").val();
			if(userID == "")
			{
				$("#spanMsg").html("아이디를 입력하세요.");
				CheckState = "00";
				return;
			}
			$.ajax({
				type : "get",
				url: "idcheck.jsp?id=" + userID,
				dataType: "html",
				success : function(data) 
				{	
					// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.	
					//$("#spanMsg").html(data);
					data = data.trim();
					if(data == "ERROR")
					{
						$("#spanMsg").html("아이디 검사 오류입니다.");
						CheckState = "00";
					}
					if(data == "DUPLICATE")
					{
						$("#spanMsg").html("중복된 아이디입니다.");
						CheckState = "01";
					}
					if(data == "NOT_DUPLICATE")
					{
						$("#spanMsg").html("사용가능한 아이디입니다.");
						CheckState = "02";
					}					
				},
				error : function(xhr, status, error) 
				{
					// 통신 오류 발생시
					$("#spanMsg").html("아이디 검사 오류입니다.");
				}
			});			
		});
		
		$("#btn_join").click(function(){
			if(CheckState == "00")
			{
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return;
			}
			if(CheckState == "01")
			{
				alert("중복된 아이디입니다. 다른 아이디를 입력하세요.");
				$("#id").focus();
				return;
			}
			if( $("#pw").val() == "")
			{
				alert("비밀번호를 입력하세요.");
				$("#pw").focus();
				return;				
			}
			if( $("#name").val() == "")
			{
				alert("이름 입력하세요.");
				$("#name").focus();
				return;				
			}
			if( $("#pw").val() != $("#pwcheck").val())
			{
				alert("비밀번호가 일치하지 않습니다.");
				$("#pw").focus();
				return;				
			}	
			if( $("#sign").val() == "")
			{
				alert("자동방지 가입 코드를 입력하세요.");
				$("#sign").focus();
				return;				
			}			
			
			$.ajax({
				type : "get",
				url: "getsign.jsp",
				dataType: "html",
				success : function(data) 
				{	
					// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
					data = data.trim();
					if( $("#sign").val() != data)
					{
						alert("자동방지 가입 코드가 일치하지 않습니다.");
						$("#sign").focus();
					}else
					{
						if(confirm("회원 가입을 진행하시겠습니까?") == 1)
						{
							//document.join.sumbit();
							$("#join").submit();
						}
					}
				},
				error : function(xhr, status, error) 
				{					
				}
			});				
		});
		
		$("#btn_cancel").click(function(){
			document.location = "index.jsp";
		});
		
	}
</script>
<form id="join"  name="join" method="post" action="joinok.jsp">
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
			<td><input type="text" id="id" name="id" style="width:120px">
			<span id="spanMsg">아이디를 입력하세요.</span></td>
		</tr>
		<tr>
			<td>비밀번호 (*)</td>
			<td><input type="password" id="pw" name="pw"  style="width:95%"></td>
		</tr>
		<tr>
			<td>비밀번호 확인 (*)</td>
			<td><input type="password" id="pwcheck" name="pwcheck" style="width:95%"></td>
		</tr>			
		<tr>
			<td>이름 (*)</td>
			<td><input type="text" id="name" name="name"  style="width:95%"></td>
		</tr>		
		<tr>
			<td>성별 (*)</td>
			<td>
				<input type="radio" id="gender" name="gender" checked>남자
				<input type="radio" id="gender" name="gender">여자
			</td>
		</tr>		
		<tr>
			<td>취미 (*)</td>
			<td>
				<select id="habby" name="habby" >
					<option value="1" selected>낚시</option>
					<option value="2">여행</option>
					<option value="3">게임</option>
				</select>
			</td>
		</tr>		
		<tr>
			<td>관심분야</td>
			<td>
				<input type="checkbox" value="1" id="interest" name="interest"  checked>책
				<input type="checkbox" value="2" id="interest" name="interest">영화					
			</td>
		</tr>	
		<tr>
			<td>자동가입 방지</td>
			<td>
			<img src="sign.jsp">
			방지코드 : <input type="text" id="sign" name="sign">					
			</td>
		</tr>			
		<tr>
			<td colspan="2" style="text-align:center;">
				<input type="button" id="btn_join" value="가입완료">
				<input type="button" id="btn_cancel" value="취소">
			</td>							
		</tr>																															
	</table>
</form>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="include/tail.jsp" %>
