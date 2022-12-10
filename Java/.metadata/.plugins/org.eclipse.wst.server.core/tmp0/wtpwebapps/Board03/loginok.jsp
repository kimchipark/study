<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
String uid = request.getParameter("userid");
String upw = request.getParameter("userpw");

if( uid == null || upw == null)
{
	stmt.close();
	conn.close();
	%>
	<script type="text/javascript">
		alert("아이디 또는 비밀번호가 입력되지 않았습니다.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}
String sql = "";
sql += "select uno, uname from user ";
sql += "where uid = '"+ uid +"' and upw = md5('"+ upw +"') ";
ResultSet result = stmt.executeQuery(sql);
if(result.next() == false)
{
	stmt.close();
	conn.close();
	%>
	<script type="text/javascript">
		alert("아이디 또는 비밀번호가  일치하지 않습니다.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}
String uno = result.getString("uno");
String uname = result.getString("uname");

session.setAttribute("id", uid);
session.setAttribute("name", uname);
session.setAttribute("no", uno);

response.sendRedirect("index.jsp");
%>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>