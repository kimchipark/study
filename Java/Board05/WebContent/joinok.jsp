<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
//한글 데이터를 변환한다.
request.setCharacterEncoding("euc-kr");

//join.jsp에서 넘어온 변수를 얻는다.
String uid     = request.getParameter("id");
String upw     = request.getParameter("pw");
String uname   = request.getParameter("name");
String ugender = request.getParameter("gender");
String uhobby  = request.getParameter("hobby");
String ukind[] = request.getParameterValues("interest");

UserVO vo = new UserVO();
vo.setId(uid);
vo.setPw(upw);
vo.setName(uname);
vo.setGender(ugender);
vo.setHobby(uhobby);
vo.setRetire("N");

UserDTO dto = new UserDTO();
dto.Insert(vo);
%>
<script>
	alert("회원가입이 완료되었습니다.");
	document.location = "index.jsp";
</script>
