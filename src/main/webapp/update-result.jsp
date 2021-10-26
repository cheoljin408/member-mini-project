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
	<a href="index.jsp">Home</a>
	<h3>${sessionScope.mvo.name}님의 회원정보수정 결과</h3>
	<p>아이디: ${sessionScope.mvo.id}</p>
	<p>패스워드:${sessionScope.mvo.password}</p>
	<p>이름: ${sessionScope.mvo.name}</p>
	<p>주소: ${sessionScope.mvo.address}</p>
	<p>생년월일: ${sessionScope.mvo.birth}</p>
</body>
</html>