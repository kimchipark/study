<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
if(LoginID == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}
String no = request.getParameter("no"); // 게시물 번호
String pageno = request.getParameter("page"); // 게시물이 있는 현재 페이지
String kind = request.getParameter("kind"); // 게시물의 장소
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || pageno == null || kind == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";
sql = "delete from attach where bno = " + no;
stmt.executeUpdate(sql);

sql = "delete from reply where bno = " + no;
stmt.executeUpdate(sql);

sql = "delete from board where bno = " + no;
stmt.executeUpdate(sql);
%>
글이 삭제되었습니다.
<br>
<a href="index.jsp?kind=<%= kind %>">목록으로 돌아가기</a>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>