<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/common.jsp" %>    
<%
//�ѱ� �����͸� ��ȯ�Ѵ�.
request.setCharacterEncoding("euc-kr");

//join.jsp���� �Ѿ�� ������ ��´�.
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
	alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
	document.location = "index.jsp";
</script>
