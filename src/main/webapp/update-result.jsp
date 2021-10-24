<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 수정 완료</title>
</head>
<body>
	<% MemberVO vo = (MemberVO)session.getAttribute("mvo"); %>
	<a href = "test-login.jsp">Home</a>
	<hr>
	<h3>회원정보수정완료</h3>
	아이디 : <%= vo.getId() %> 
	<br>
	이름 : <%= vo.getName() %>
	<br>
	주소 : <%= vo.getAddress() %>
</body>
</html>