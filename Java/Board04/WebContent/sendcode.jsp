<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="config/dbopen.jsp" %>    
<%
String id   = request.getParameter("id");
String mail = request.getParameter("mail");


//���� ID�� �ִ��� �˻��Ѵ�.
String sql = "select uno from user ";
sql += "where uid = '" + id + "' ";
//sql += "and mail = '" + mail + "' ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//���̵� ����.
	out.println("�ش� ���̵� �����ϴ�.");
	db.DBClose();
	return;	
}
String uno = db.GetValue("uno");

//������ ���� �Ǵ� ���ڸ� �����.
String code = "";
for(int i = 0 ; i < 4; i++)
{
	int n = (int)(Math.random() * 100) / 10;
	code += n + "";
}


//������ ���� �Ǵ� ���ڸ� �����Ѵ�.
sql = "update user set ucode = '" + code + "' where uno = " + uno;
db.RunSQL(sql);

db.DBClose();
//����/�޴��� ��ȣ�� ������ ���� �Ǵ� ���ڸ� �߼��Ѵ�.
out.println("�����ڵ带 �߼��Ͽ����ϴ�.");
%>
<%@ include file="config/dbclose.jsp" %>
