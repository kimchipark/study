<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<%
//login.jsp에서 보내온 변수를 받는다.
String uid = request.getParameter("userid");
String upw = request.getParameter("userpw");

if( uid == null || upw == null )
{
	db.DBClose();
	%>
	<script>
		alert("아이디 또는 비밀번호가 입력되지 않았습니다.");
		document.location = "login.jsp";
	</script>
	<%
	return;
}


String sql = "";
sql += "select uno,uname from user ";
sql += "where uid = '" + db._R(uid) + "' ";
sql += "and upw = md5('" + db._R(upw) + "') ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//아이디가 없거나 비번 틀림.
	%>
	<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		document.location = "login.jsp";
	</script>
	<%
}else
{
	//로그인 계정이 있음.
	String uno   = db.GetValue("uno");
	String uname = db.GetValue("uname");
	LoginVO loginVO = new LoginVO();
	loginVO.setId(uid);
	loginVO.setName(uname);
	loginVO.setNo(uno);
	session.setAttribute("login",loginVO);
	%>
	<script>		
		document.location = "index.jsp";
	</script>
	<%	
}
db.CloseQuery();
%>
<%@ include file="config/dbclose.jsp" %>

