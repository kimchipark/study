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
request.setCharacterEncoding("euc-kr");

String title = request.getParameter("title"); // 제목
String kind = request.getParameter("subject"); // 구분
String note = request.getParameter("contents"); // 내용

System.out.println("title : " + title);
System.out.println("kind : " + kind);
System.out.println("note : " + note);

String sql = "";
sql +="insert into board (uno, btitle, bkind, bnote) ";
sql +="values("+ LoginNo +", '"+ title +"', '"+ kind +"', '"+ note +"') ";
stmt.executeUpdate(sql);

//last_insert_id() 마지막으로 생성된 pk 값을 가져오는 함수.

sql = "select last_insert_id() as no ";
ResultSet result = stmt.executeQuery(sql);
result.next();
String bno = result.getString("no");
%>
<script type="text/javascript">
	alert("게시물이 작성되었습니다.");
	document.location = "view.jsp?no=<%= bno %>";
</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>