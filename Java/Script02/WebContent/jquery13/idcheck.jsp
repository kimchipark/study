<%@ page language="java" contentType="text/xml; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String UserID = request.getParameter("id");
//00:아이디 검사 안함
//01:아이디가 중복됨
//02:회원 가입 가능한 아이디
if( UserID == null)
{
	//out.println("아이디를 입력하세요");
	%>
	<response>
		<code>00</code>
		<msg>아이디를 입력하세요</msg>
	</response>
	<%
	//out.println("00:아이디를 입력하세요");
}
else if( UserID.equals("ezen"))
{
	%>
	<response>
		<code>01</code>
		<msg>중복된 아이디 입니다.</msg>
	</response>
	<%
	//out.println("중복된 아이디 ezen 입니다.");
	//out.println("01:중복된 아이디 입니다.");
}
else 
{
	%>
	<response>
		<code>02</code>
		<msg>사용 가능한 아이디 입니다.</msg>
	</response>
	<%
	//out.println("사용 가능한 아이디 입니다.");
	//out.println("02:사용 가능한 아이디 입니다.");
}
%>