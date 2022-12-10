<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//delete.jsp?kind=J&key=&page=1&no=60601 분석한다.
String kind = request.getParameter("kind");
if(kind == null) kind = "J";
String type = request.getParameter("type");
if(type == null) type = "T";
String key = request.getParameter("key");
if(key == null) key = "";
String curpage = request.getParameter("page");
if(curpage == null) curpage = "1";
String no = request.getParameter("no");
if(no == null)
{
	//게시물 번호가 없으면 오류임.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//게시물을 삭제한다.
String sql = "";

//댓글 삭제 
sql = "delete from reply where bno = " + no;
db.RunSQL(sql);

//첨부파일 삭제 
sql = "delete from attach where bno = " + no;
db.RunSQL(sql);

//게시물 삭제 
sql = "delete from board where bno = " + no;
db.RunSQL(sql);
%>
<script>
	
	alert("게시물이 삭제되었습니다.");
	document.location = "index.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>";

</script>
<%@ include file="config/dbclose.jsp" %>