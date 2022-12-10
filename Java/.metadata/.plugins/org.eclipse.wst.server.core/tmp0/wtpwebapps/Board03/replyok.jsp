<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<%
if(LoginID == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

request.setCharacterEncoding("euc-kr"); // 한글처리

String no = request.getParameter("no"); // 게시물 번호
String pageno = request.getParameter("page"); // 게시물이 있는 현재 페이지
String kind = request.getParameter("kind"); // 게시물의 장소

if(kind == null) kind = "J";
if(pageno == null) pageno ="1";
if(no == null )
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String rnote = request.getParameter("rnote"); //댓글 내용
out.print(rnote);

String sql = "";
sql += "insert into reply (bno, uno, rnote) ";
sql += "values('"+ no +"', '"+ LoginNo +"', '"+ rnote +"') ";
stmt.executeUpdate(sql);

%>
<script type="text/javascript">
	alert("댓글 작성이 완료되었습니다.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>";	
</script>
<%@ include file = "include/tail.jsp" %>