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
String reno = request.getParameter("reno"); // 댓글번호
if(pageno == null) pageno="1";
if(kind == null) kind="J";

if( no == null || reno == null)
{
	stmt.close();
	conn.close();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";
//댓글 삭제
sql = "delete from reply where reno = " + reno;
stmt.executeUpdate(sql);

%>
<script type="text/javascript">
	alert("댓글이 삭제 되었습니다.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>";	
</script>
<%@ include file = "include/tail.jsp" %>