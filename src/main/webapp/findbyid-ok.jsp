<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>findbyid-ok</title>
	</head>
	<body>
		<a href="index.jsp">Home</a>
		<h3>검색결과</h3>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>생년월일</th>
					<th>등록일자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${requestScope.mvo.id}</td>
					<td>${requestScope.mvo.name}</td>
					<td>${requestScope.mvo.address}</td>
					<td>${requestScope.mvo.birth}</td>
					<td>${requestScope.mvo.regdate}</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>