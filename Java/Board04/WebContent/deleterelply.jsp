<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//로그인 여부 검사
LoginVO loginVO = (LoginVO)session.getAttribute("login");
if( loginVO == null )
{
	//로그인 하지 않음
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//deletereply.jsp?kind=H&key=&page=1&no=60602&reno=9 분석
String kind   = request.getParameter("kind");
String type = request.getParameter("type");
String key    = request.getParameter("key");
String curpage= request.getParameter("page");
String no     = request.getParameter("no");
String reno   = request.getParameter("reno");

if( no == null || reno == null)
{
	//게시물 번호 또는 댓글 번호가 없으면..
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

String sql = "";

//댓글 삭제 
sql = "delete from reply where reno = " + reno;
db.RunSQL(sql);
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	alert("댓글이 삭제 되었습니다.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>

