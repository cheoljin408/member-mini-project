<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.mvo == null}">
			<%
				response.sendRedirect("index.jsp");
			%>
		</c:when>
		<c:otherwise>
			<a href="index.jsp">Home</a>	<!--  index.jsp 수정 -->
			<hr>
			<form action = "UpdateMemberServlet" method= "post">
				아이디 : <input type="text" name="id" value="${sessionScope.mvo.id}" readonly="readonly">
				<br>
				패스워드 : <input type="password" name="password" value="${sessionScope.mvo.password}" required="required">
				<br>
				이름 : <input type="text" name="name" value="${sessionScope.mvo.name}" required="required">
				<br>
				주소 : <input type="text" name="address" value="${sessionScope.mvo.address}" required="required">
				<br>
				생년월일: <input type="date" name="birthday" required="required" value="${sessionScope.mvo.birth}" >
				<br>
				<button type="submit">수정</button>
			</form>	
		</c:otherwise>
	</c:choose>
</body>
</html>