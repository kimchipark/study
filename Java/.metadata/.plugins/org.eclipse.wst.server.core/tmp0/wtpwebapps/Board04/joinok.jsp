<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%
//한글 데이터를 변환한다.
request.setCharacterEncoding("euc-kr");

//join.jsp에서 넘어온 변수를 얻는다.
String uid     = request.getParameter("id");
String upw     = request.getParameter("pw");
String uname   = request.getParameter("name");
String ugender = request.getParameter("gender");
String uhobby  = request.getParameter("hobby");
String ukind[] = request.getParameterValues("interest");
if(uid == null || upw == null || uname == null)
{
	db.DBClose();	
	response.sendRedirect("index.jsp");
	return;
}

//동일한 아이디로 회원 등록이 되어 있는지 검사한다.
String sql = "";

sql  = "select uid ";
sql += "from user ";
sql += "where uid = '" + uid + "'";
db.OpenQuery(sql);
if(db.GetNext() == true)
{
	//중복된 아이디가 있음.
	%>
	<script>
	
		alert("중복된 회원아이디 입니다.");		
		document.location = "join.jsp";
		
	</script>	
	<%	
	db.DBClose();
	return;
}

sql  = "insert into user ";
sql += "(uid,upw,uname,ugender,uhobby) ";
sql += "values ('" + db._R(uid) + "',";
sql += "md5('" + db._R(upw) + "'),";
sql += "'" + db._R(uname) + "',";
sql += "'" + ugender + "',";
sql += "'" + uhobby + "') ";
db.RunSQL(sql);

//등록된 아이디의 번호를 얻는다.
sql = "select last_insert_id() as no ";
db.OpenQuery(sql);
db.GetNext();
String uno = db.GetValue("no");
db.CloseQuery();

//관심분야 등록
String fname = "";
if(ukind != null)
{
	for(String fkind : ukind)
	{
		String ary[] = fkind.split(":");
		sql = "insert into fav (uno,fkind,fname) ";	
		sql += "values (" + uno + ",";
		sql += "'" + ary[0] + "',";
		sql += "'" + ary[1] + "')";
		db.RunSQL(sql);
	}
}
%>
<script>

	alert("회원가입이 완료되었습니다.");
	
	document.location = "login.jsp";
	
</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="config/dbclose.jsp" %>
