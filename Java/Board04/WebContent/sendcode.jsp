<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>    
<%
String id   = request.getParameter("id");
String mail = request.getParameter("mail");


//실제 ID가 있는지 검사한다.
String sql = "select uno from user ";
sql += "where uid = '" + id + "' ";
//sql += "and mail = '" + mail + "' ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//아이디가 없음.
	out.println("해당 아이디가 없습니다.");
	db.DBClose();
	return;	
}
String uno = db.GetValue("uno");

//랜덤한 숫자 또는 문자를 만든다.
String code = "";
for(int i = 0 ; i < 4; i++)
{
	int n = (int)(Math.random() * 100) / 10;
	code += n + "";
}


//랜덤한 숫자 또는 문자를 저장한다.
sql = "update user set ucode = '" + code + "' where uno = " + uno;
db.RunSQL(sql);

db.DBClose();
//메일/휴대폰 번호로 랜덤한 숫자 또는 문자를 발송한다.
out.println("인증코드를 발송하였습니다.");
%>
<%@ include file="config/dbclose.jsp" %>
