<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %> 
<%
String id   = request.getParameter("id");
String mail = request.getParameter("mail");
String code = request.getParameter("code");

//실제 ID에 인증코드가 일치하는지 검사한다.
String sql = "select uno from user ";
sql += "where uid = '" + id + "' ";
sql += "and ucode = '" + code + "' ";
//sql += "and mail = '" + mail + "' ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//아이디가 없음.
	out.println("해당 아이디가 없거나 인증코드가 일치하지 않습니다.");
	db.DBClose();
	return;	
}
String uno = db.GetValue("uno");

//랜덤한 비밀번호를 생성한다.
String upw = "";
for(int i = 0 ; i < 6; i++)
{
	int n = (int)(Math.random() * 100) / 10;
	upw += n + "";
}

//비밀번호를 초기화 한다.
sql  = "update user ";
sql += "set upw = md5('" + upw + "') , ";
sql += "ucode = null ";
sql += "where uno = " + uno;
db.RunSQL(sql);

db.DBClose();

//비밀번호를 메일 또는 SMS로 발송한다.

out.println("비밀번호는 [" + upw + "]입니다.");
%>   
<%@ include file="config/dbclose.jsp" %>