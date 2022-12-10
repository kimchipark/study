<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
$.ajax({
					type: "get",
					url: "addtr.jsp";
					dataType: "html",
					success : function(data)
					{
						// 통신이 성공적으로 이루어졌을때 이 함수를 타게 된다.
					},
					error : function(xhr, status, error)
					{
						// 통신 오류 발생시
					}
				});