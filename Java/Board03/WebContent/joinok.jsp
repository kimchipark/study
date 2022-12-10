<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "include/head.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");
String kind[] = request.getParameterValues("interest");
boolean isopen = true;
if(id == null || pw == null || name == null )
{
	response.sendRedirect("index.jsp");
	return;
}
System.out.println("id : " + id);
System.out.println("pw : " + pw);
System.out.println("name : " + name);
System.out.println("gender : " + gender);
System.out.println("hobby : " + hobby);
if(kind!=null)
{
	for(String value : kind)
	{
		System.out.println("kind :" + value);
	}
}

String sql = "";
sql += "select uid from user ";
sql += "where uid =" + "'"+ id +"'";
ResultSet result = stmt.executeQuery(sql);
if(result.next()==true)
{
	stmt.close();
	conn.close();
	isopen = false;
	%>
	<script type="text/javascript">
		alert("이미 존재하는 아이디입니다..");
		document.location = "join.jsp";
	</script>
	<%
}

sql = "insert into user ( uid, upw, uname, ugender, uhobby) ";
sql += "values('"+ id +"', md5('"+ pw +"'), '"+ name +"', '"+ gender +"', '"+ hobby +"') ";
stmt.executeUpdate(sql);

sql = "select last_insert_id() as no ";
result = stmt.executeQuery(sql);
result.next();
String no = result.getString("no");
if(kind != null)
{
	for(String fkind : kind)
	{
		String arr[] = fkind.split(":");
		sql = "insert into fav (uno, fkind, fname) ";
		sql += "values("+ no +", '"+ arr[0] +"', '"+ arr[1] +"') " ;
		stmt.executeUpdate(sql);
	}
}
%>

<%
if(isopen)
{
	%>
	<script type="text/javascript">
		alert("회원가입이 완료되었습니다.");
		document.location = "index.jsp";
	</script>
	<%
}
%>

<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file = "include/tail.jsp" %>