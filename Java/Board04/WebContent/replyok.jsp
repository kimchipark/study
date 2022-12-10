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

request.setCharacterEncoding("euc-kr");

//replyok.jsp?kind=J&key=&page=1&no=60602 에서 보내온 정보 분석
String kind  = request.getParameter("kind");
String type  = request.getParameter("type");
String key   = request.getParameter("key");
String curpage = request.getParameter("page");
String no    = request.getParameter("no");
if( no == null)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}
String rnote   = request.getParameter("rnote");
System.out.println("rnote:" + rnote);

//댓글 정보를 저장한다.
String sql = "";
sql += "insert into reply ";
sql += "(uno,bno,rnote) ";
sql += "values (" + loginVO.getNo() + ",";
sql += "'" + no + "', ";
sql += "'" + rnote + "') ";
db.RunSQL(sql);
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<script>

	alert("댓글작성이 완료되었습니다.");
	document.location = "view.jsp?kind=<%= kind %>&type=<%= type %>&key=<%= key %>&page=<%= curpage %>&no=<%= no %>";

</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
