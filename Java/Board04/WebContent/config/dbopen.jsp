<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ezen.*" %>
<%
//업로드 경로 설정
String uploadPath = "D:\\psj\\workspace\\Board04\\WebContent\\upload";

DBManager db = new DBManager();
db.DBOpen();
%>