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

String bkind = request.getParameter("subject"); // 수정된 게시물의 게시판 장소
String btitle = request.getParameter("title"); // 수정된 제목
String bnote = request.getParameter("contents"); //수정된 내용


//System.out.println("subject :" + bkind);
//System.out.println("title :" + btitle);
//System.out.println("contents :" + bnote);

//update 구문
String sql = "";
sql += "update board set btitle='"+ btitle +"', bkind='"+ bkind +"', bnote = '"+ bnote +"' ";
sql += "where bno = " + no;
stmt.executeUpdate(sql);
%>
<script type="text/javascript">
	alert("게시물 수정이 완료되었습니다.");
	document.location="view.jsp?kind=<%= kind %>&page=<%= pageno %>&no=<%= no %>"; <%//수정이 완료된후 수정했던 게시물의 페이지, 게시물 번호, 게시판 종류를 보내준다.%>
</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>