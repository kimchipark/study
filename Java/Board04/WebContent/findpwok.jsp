<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %> 
<%
String id   = request.getParameter("id");
String mail = request.getParameter("mail");
String code = request.getParameter("code");

//���� ID�� �����ڵ尡 ��ġ�ϴ��� �˻��Ѵ�.
String sql = "select uno from user ";
sql += "where uid = '" + id + "' ";
sql += "and ucode = '" + code + "' ";
//sql += "and mail = '" + mail + "' ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//���̵� ����.
	out.println("�ش� ���̵� ���ų� �����ڵ尡 ��ġ���� �ʽ��ϴ�.");
	db.DBClose();
	return;	
}
String uno = db.GetValue("uno");

//������ ��й�ȣ�� �����Ѵ�.
String upw = "";
for(int i = 0 ; i < 6; i++)
{
	int n = (int)(Math.random() * 100) / 10;
	upw += n + "";
}

//��й�ȣ�� �ʱ�ȭ �Ѵ�.
sql  = "update user ";
sql += "set upw = md5('" + upw + "') , ";
sql += "ucode = null ";
sql += "where uno = " + uno;
db.RunSQL(sql);

db.DBClose();

//��й�ȣ�� ���� �Ǵ� SMS�� �߼��Ѵ�.

out.println("��й�ȣ�� [" + upw + "]�Դϴ�.");
%>   
<%@ include file="config/dbclose.jsp" %>