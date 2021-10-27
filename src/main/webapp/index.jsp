<%@page import="org.kosta.memberproject.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>test-findbyid</title>
	</head>
	<body>
		<h3>아이디로 회원 검색</h3>
		<form action="FindMemberByIdController.do">
			<input type="text" name="id" required="required" placeholder="아이디">
			<button type="submit">검색</button>
		</form>
		<c:choose>
			<c:when test="${sessionScope.mvo == null}">
				<h3>로그인</h3>
				<form action="LoginController.do" method="post">
					<input type="text" name="id" placeholder="아이디" required="required"><br>
					<input type="password" name="password" placeholder="패스워드" required="required">
					<button>로그인</button>
				</form>
				<h3>회원가입</h3>
					<a href="register-form.jsp">회원가입</a>
			</c:when>
			<c:otherwise>
				<h3>로그인 성공</h3>
				${sessionScope.mvo.name} 님 환영합니다.
				<h3>주소로 회원 검색</h3>
				<form action="FindMemberListByAddressController.do">
					<input type="text" name="address" required="required" placeholder="주소" >
					<button type="submit">검색</button>
				</form>
				<form action = "LogoutController.do" method = "post" id = "logoutForm"></form>
				<a href = "#" onclick = "logout()">로그아웃</a>
				<hr>
				<h3>회원정보 수정</h3>
				<a href = "update-member-form.jsp">회원정보수정</a>
			</c:otherwise>
		</c:choose>
		<script type="text/javascript">
			function logout(){
				document.getElementById("logoutForm").submit();
			}
		</script>
	</body>
</html>