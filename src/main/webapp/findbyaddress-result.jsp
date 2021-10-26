<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>findbyaddress-result</title>
	</head>
	<body>
		<a href="index.jsp">Home</a>
		<h3>${param.address}에 사는 회원 리스트</h3>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>생년월일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.memberList}" var="member">
					<tr>
						<td>${member.id}</td>
						<td>${member.name}</td>
						<td>${member.birth}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>